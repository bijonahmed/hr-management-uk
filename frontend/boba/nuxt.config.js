export default {
  // Global page headers: https://go.nuxtjs.dev/config-head
  head: {
    title: "Welcome to HRM ",
    htmlAttrs: {
      lang: "en",
    },
    meta: [
      { charset: "utf-8" },
      { name: "viewport", content: "width=device-width, initial-scale=1" },
      { hid: "description", name: "description", content: "" },
      { name: "format-detection", content: "telephone=no" },
    ],
    link: [
      {
        rel: "icon",
        type: "image/x-icon",
        href: "/images/favicon-32x32.png",
      },
      {
        rel: "stylesheet",
        href: "https://getbootstrap.com/docs/5.0/examples/sidebars/sidebars.css",
      },
      { rel: "stylesheet", href: "/plugins/notifications/css/lobibox.min.css" },
      { rel: "stylesheet", href: "/plugins/metismenu/css/metisMenu.min.css" },
      { rel: "stylesheet", href: "/css/pace.min.css" },
      { rel: "stylesheet", href: "/css/bootstrap.min.css" },
      { rel: "stylesheet", href: "/css/app.css" },
      { rel: "stylesheet", href: "/css/icons.css" },
    ],
    script: [
      { src: "/js/bootstrap.bundle.min.js" },
      { src: "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js", },
      { src: "https://getbootstrap.com/docs/5.0/examples/sidebars/sidebars.js", ssr: false},
      { src: "/plugins/metismenu/js/metisMenu.min.js" },
      { src: "/plugins/sparkline-charts/jquery.sparkline.min.js" },
      { src: "/plugins/jquery-knob/excanvas.js" },
      { src: "/plugins/jquery-knob/jquery.knob.js" },
      //notification
      { src: "/plugins/notifications/js/lobibox.min.js" },
      { src: "/plugins/notifications/js/notifications.min.js" },
      { src: "/plugins/notifications/js/notification-custom-script.js" },
      //end notification
      { src: "/js/pace.min.js" },
    ],
  },
  css: [],
  plugins: [
    "~/plugins/vform.js",
    // { src: "~/plugins/jquery.js", ssr: false },
    //'~/plugins/toast.js',
  ],
  components: true,
  // Modules for dev and build (recommended): https://go.nuxtjs.dev/config-modules
  buildModules: [],
  // Modules: https://go.nuxtjs.dev/config-modules
  modules: ["@nuxtjs/axios", "@nuxtjs/auth-next"],
  auth: {
    // Options
    strategies: {
      local: {
        token: {
          property: "access_token",
          // required: true,
          // type: 'Bearer'
        },
        user: {
          property: false,
          // autoFetch: true
        },
        endpoints: {
          login: { url: "/auth/login", method: "post" },
          logout: { url: "/auth/logout", method: "post" },
          user: { url: "/auth/me", method: "post" },
        },
      },
    },
    redirect: {
      login: "/login",
      logout: "/",
      callback: "/login",
      home: "/",
    },
  },
  // Axios module configuration: https://go.nuxtjs.dev/config-axios
  axios: {
   //baseURL: "http://127.0.0.1:8000/api",
   baseURL: "http://apihr.futuregenit.com/api",
  },
  // router: {
  //   middleware: ['auth']
  // },
  // Build Configuration: https://go.nuxtjs.dev/config-build
  build: {
    transpile: ["defu"],
  },
  // generate: {
  //   fallback: true,
  // },
};
