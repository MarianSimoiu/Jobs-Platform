[33mcommit 85abb78aa6c755600665bf937d9a904bac866d12[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m, [m[1;31morigin/idk[m[33m, [m[1;31morigin/HEAD[m[33m, [m[1;32midk[m[33m)[m
Author: GabrielaZarnescu <zarnescu_gabriela@yahoo.com>
Date:   Fri Jul 23 17:14:43 2021 +0300

    some cleanup

[1mdiff --git a/client/package-lock.json b/client/package-lock.json[m
[1mindex 4f7ee9a..054feae 100644[m
[1m--- a/client/package-lock.json[m
[1m+++ b/client/package-lock.json[m
[36m@@ -1283,6 +1283,15 @@[m
       "resolved": "https://registry.npmjs.org/@humanwhocodes/object-schema/-/object-schema-1.2.0.tgz",[m
       "integrity": "sha512-wdppn25U8z/2yiaT6YGquE6X8sSv7hNMWSXYSSU1jGv/yd6XqjXgTDJ8KP4NgjTXfJ3GbRjeeb8RTV7a/VpM+w=="[m
     },[m
[32m+[m[32m    "@hypnosphi/create-react-context": {[m
[32m+[m[32m      "version": "0.3.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@hypnosphi/create-react-context/-/create-react-context-0.3.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-V1klUed202XahrWJLLOT3EXNeCpFHCcJntdFGI15ntCwau+jfT386w7OFTMaCqOgXUH1fa0w/I1oZs+i/Rfr0A==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "gud": "^1.0.0",[m
[32m+[m[32m        "warning": "^4.0.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "@istanbuljs/load-nyc-config": {[m
       "version": "1.1.0",[m
       "resolved": "https://registry.npmjs.org/@istanbuljs/load-nyc-config/-/load-nyc-config-1.1.0.tgz",[m
[36m@@ -3699,6 +3708,11 @@[m
       "resolved": "https://registry.npmjs.org/boolbase/-/boolbase-1.0.0.tgz",[m
       "integrity": "sha1-aN/1++YMUes3cl6p4+0xDcwed24="[m
     },[m
[32m+[m[32m    "bootstrap": {[m
[32m+[m[32m      "version": "5.0.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/bootstrap/-/bootstrap-5.0.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-1Ge963tyEQWJJ+8qtXFU6wgmAVj9gweEjibUdbmcCEYsn38tVwRk8107rk2vzt6cfQcRr3SlZ8aQBqaD8aqf+Q=="[m
[32m+[m[32m    },[m
     "brace-expansion": {[m
       "version": "1.1.11",[m
       "resolved": "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.11.tgz",[m
[36m@@ -4090,6 +4104,11 @@[m
         }[m
       }[m
     },[m
[32m+[m[32m    "classnames": {[m
[32m+[m[32m      "version": "2.3.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/classnames/-/classnames-2.3.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-OlQdbZ7gLfGarSqxesMesDa5uz7KFbID8Kpq/SxIoNGDqY8lSYs0D+hhtBXhcdB3rcbXArFr7vlHheLk1voeNA=="[m
[32m+[m[32m    },[m
     "clean-css": {[m
       "version": "4.2.3",[m
       "resolved": "https://registry.npmjs.org/clean-css/-/clean-css-4.2.3.tgz",[m
[36m@@ -4780,6 +4799,11 @@[m
         }[m
       }[m
     },[m
[32m+[m[32m    "csstype": {[m
[32m+[m[32m      "version": "3.0.8",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/csstype/-/csstype-3.0.8.tgz",[m
[32m+[m[32m      "integrity": "sha512-jXKhWqXPmlUeoQnF/EhTtTl4C9SnrxSH/jZUih3jmO6lBKr99rP3/+FmrMj4EFpOXzMtXHAZkd3x0E6h6Fgflw=="[m
[32m+[m[32m    },[m
     "cyclist": {[m
       "version": "1.0.1",[m
       "resolved": "https://registry.npmjs.org/cyclist/-/cyclist-1.0.1.tgz",[m
[36m@@ -5101,6 +5125,15 @@[m
         "utila": "~0.4"[m
       }[m
     },[m
[32m+[m[32m    "dom-helpers": {[m
[32m+[m[32m      "version": "5.2.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/dom-helpers/-/dom-helpers-5.2.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-nRCa7CK3VTrM2NmGkIy4cbK7IZlgBE/PYMn55rrXefr5xXDP0LdtfPnblFDoVdcAfslJ7or6iqAUnx0CCGIWQA==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/runtime": "^7.8.7",[m
[32m+[m[32m        "csstype": "^3.0.2"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "dom-serializer": {[m
       "version": "0.2.2",[m
       "resolved": "https://registry.npmjs.org/dom-serializer/-/dom-serializer-0.2.2.tgz",[m
[36m@@ -6891,6 +6924,11 @@[m
       "integrity": "sha1-8QdIy+dq+WS3yWyTxrzCivEgwIE=",[m
       "optional": true[m
     },[m
[32m+[m[32m    "gud": {[m
[32m+[m[32m      "version": "1.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/gud/-/gud-1.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-zGEOVKFM5sVPPrYs7J5/hYEw2Pof8KCyOwyhG8sAF26mCAeUFAcYPu1mwB7hhpIP29zOIBaDqwuHdLp0jvZXjw=="[m
[32m+[m[32m    },[m
     "gzip-size": {[m
       "version": "5.1.1",[m
       "resolved": "https://registry.npmjs.org/gzip-size/-/gzip-size-5.1.1.tgz",[m
[36m@@ -10835,6 +10873,11 @@[m
         "ts-pnp": "^1.1.6"[m
       }[m
     },[m
[32m+[m[32m    "popper.js": {[m
[32m+[m[32m      "version": "1.16.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/popper.js/-/popper.js-1.16.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-Wb4p1J4zyFTbM+u6WuO4XstYx4Ky9Cewe4DWrel7B0w6VVICvPwdOpotjzcf6eD8TsckVnIMNONQyPIUFOUbCQ=="[m
[32m+[m[32m    },[m
     "portfinder": {[m
       "version": "1.0.28",[m
       "resolved": "https://registry.npmjs.org/portfinder/-/portfinder-1.0.28.tgz",[m
[36m@@ -12307,6 +12350,25 @@[m
       "resolved": "https://registry.npmjs.org/react-is/-/react-is-16.13.1.tgz",[m
       "integrity": "sha512-24e6ynE2H+OKt4kqsOvNd8kBpV65zoxbA4BVsEOB3ARVWQki/DHzaUoC5KuON/BiccDaCCTZBuOcfZs70kR8bQ=="[m
     },[m
[32m+[m[32m    "react-lifecycles-compat": {[m
[32m+[m[32m      "version": "3.0.4",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/react-lifecycles-compat/-/react-lifecycles-compat-3.0.4.tgz",[m
[32m+[m[32m      "integrity": "sha512-fBASbA6LnOU9dOU2eW7aQ8xmYBSXUIWr+UmF9b1efZBazGNO+rcXT/icdKnYm2pTwcRylVUYwW7H1PHfLekVzA=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "react-popper": {[m
[32m+[m[32m      "version": "1.3.11",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/react-popper/-/react-popper-1.3.11.tgz",[m
[32m+[m[32m      "integrity": "sha512-VSA/bS+pSndSF2fiasHK/PTEEAyOpX60+H5EPAjoArr8JGm+oihu4UbrqcEBpQibJxBVCpYyjAX7abJ+7DoYVg==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/runtime": "^7.1.2",[m
[32m+[m[32m        "@hypnosphi/create-react-context": "^0.3.1",[m
[32m+[m[32m        "deep-equal": "^1.1.1",[m
[32m+[m[32m        "popper.js": "^1.14.4",[m
[32m+[m[32m        "prop-types": "^15.6.1",[m
[32m+[m[32m        "typed-styles": "^0.0.7",[m
[32m+[m[32m        "warning": "^4.0.2"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "react-refresh": {[m
       "version": "0.8.3",[m
       "resolved": "https://registry.npmjs.org/react-refresh/-/react-refresh-0.8.3.tgz",[m
[36m@@ -12378,6 +12440,50 @@[m
         "workbox-webpack-plugin": "5.1.4"[m
       }[m
     },[m
[32m+[m[32m    "react-transition-group": {[m
[32m+[m[32m      "version": "4.4.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/react-transition-group/-/react-transition-group-4.4.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-/RNYfRAMlZwDSr6z4zNKV6xu53/e2BuaBbGhbyYIXTrmgu/bGHzmqOs7mJSJBHy9Ud+ApHx3QjrkKSp1pxvlFg==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/runtime": "^7.5.5",[m
[32m+[m[32m        "dom-helpers": "^5.0.1",[m
[32m+[m[32m        "loose-envify": "^1.4.0",[m
[32m+[m[32m        "prop-types": "^15.6.2"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "reactstrap": {[m
[32m+[m[32m      "version": "8.9.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/reactstrap/-/reactstrap-8.9.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-pmf33YjpNZk1IfrjqpWCUMq9hk6GzSnMWBAofTBNIRJQB1zQ0Au2kzv3lPUAFsBYgWEuI9iYa/xKXHaboSiMkQ==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/runtime": "^7.12.5",[m
[32m+[m[32m        "classnames": "^2.2.3",[m
[32m+[m[32m        "prop-types": "^15.5.8",[m
[32m+[m[32m        "react-popper": "^1.3.6",[m
[32m+[m[32m        "react-transition-group": "^2.3.1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "dom-helpers": {[m
[32m+[m[32m          "version": "3.4.0",[