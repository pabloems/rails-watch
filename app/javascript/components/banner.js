import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["No olvides suscribirte. "],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };