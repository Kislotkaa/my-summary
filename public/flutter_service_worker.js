'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "c07afb045d10c2727d1d5205e76624b9",
"index.html": "77a7807ea6812a84cb2aed401e063018",
"/": "77a7807ea6812a84cb2aed401e063018",
"main.dart.js": "528636ae7522e48fbc3fab092d04b195",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"icons/favicon-16x16.png": "4a88151db62f67705039b38583ef44be",
"icons/favicon.ico": "e6fdae33460795e59aa1d6a6144a8ccb",
"icons/apple-icon.png": "05417008cdd8a34cbf53eb7bf62b84bc",
"icons/apple-icon-144x144.png": "8aa70b6568d3578d83ca595d4ba5dc6b",
"icons/android-icon-192x192.png": "f15f69893a33e0dd1af5e1b3067aec55",
"icons/apple-icon-precomposed.png": "05417008cdd8a34cbf53eb7bf62b84bc",
"icons/apple-icon-114x114.png": "582e5a9f2d8052ffabfe560535034188",
"icons/ms-icon-310x310.png": "600c38752fd0a7349e786b67f369ad1a",
"icons/ms-icon-144x144.png": "8aa70b6568d3578d83ca595d4ba5dc6b",
"icons/apple-icon-57x57.png": "64f8937052a24686a01d75a441a4c1b3",
"icons/apple-icon-152x152.png": "f5fe27eedb53923eb6905905b5294dd9",
"icons/ms-icon-150x150.png": "05e4ab7f3b5dd4894b8bd307a3eb60f4",
"icons/android-icon-72x72.png": "368ed0c6564448a83cf57419e4682af3",
"icons/android-icon-96x96.png": "47606c6f26f632b4b13264daad7fd4fc",
"icons/android-icon-36x36.png": "557849fd77c0609937268c8266c1fa77",
"icons/apple-icon-180x180.png": "47585fcf25aef30cbfc7978f0ca84030",
"icons/favicon-96x96.png": "47606c6f26f632b4b13264daad7fd4fc",
"icons/manifest.json": "b58fcfa7628c9205cb11a1b2c3e8f99a",
"icons/android-icon-48x48.png": "9e66f4cc8a4bdb20fc465cbe82890ffb",
"icons/apple-icon-76x76.png": "a35f9e8a52a3625cb62463d1fcf36049",
"icons/apple-icon-60x60.png": "87ce8555fec2a22823a36e4c6e9c17a7",
"icons/browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"icons/android-icon-144x144.png": "8aa70b6568d3578d83ca595d4ba5dc6b",
"icons/apple-icon-72x72.png": "368ed0c6564448a83cf57419e4682af3",
"icons/apple-icon-120x120.png": "b567e2cd7ad5eaebc22d3b83c12410c6",
"icons/favicon-32x32.png": "54699b2577a7951208d2174a92a80cd5",
"icons/ms-icon-70x70.png": "c03bbe5f96ffae6737bb24808eaf9c8b",
"manifest.json": "b58fcfa7628c9205cb11a1b2c3e8f99a",
"assets/AssetManifest.json": "cb65ecca2f8fcf948a11aacc397ecdfc",
"assets/NOTICES": "5628897494aab6a981d9f463a18bed02",
"assets/FontManifest.json": "dc35e90bd55d95acd3ffc2b8cddca31c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/images/myPhoto.jpg": "b6a7993fc08f7919f9d3b4d0807e0564",
"assets/assets/fonts/Roboto-Regular.ttf": "f36638c2135b71e5a623dca52b611173",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
