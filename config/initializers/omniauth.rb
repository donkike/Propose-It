Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '121551027921354', '383e7a8a52f67ce60528362e3858de1b'
  provider :twitter, 'nATetRV4x5K9vrfykexn2g', 'zd55qpBTykoAfNRYPUeGZA6SHbtUvkn4Z1uLUOGuqdI'
  provider :github, 'f7602578cbaab927348e', 'd484fff5381e654e88f61dcbc1b262ec93965547'
end