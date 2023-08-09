import { KeycloakService } from "keycloak-angular";

export function initializeKeycloak(keycloak: KeycloakService): () => Promise<boolean> {
  return () =>
    keycloak.init({
      config: {
        //url: 'http://34.206.143.206:8080/auth',
        url: 'http://localhost:8080/auth',
        //url: '3.74.202.146:8080/auth',
        realm: 'sentinelservice',
        clientId: 'sentinel-frontend'
      },
      initOptions: {
        checkLoginIframe: true,
        checkLoginIframeInterval: 25
      },
      loadUserProfileAtStartUp: true
    });
}
