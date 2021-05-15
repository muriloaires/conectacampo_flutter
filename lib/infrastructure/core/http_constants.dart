const baseUrl = 'https://conecta-campo-staging.herokuapp.com/';
const apiVersion = 'api/v1';
const apiBaseToken =
    'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbiI6Ijc4bTBxIyNqejBiV25rWFIifQ.AUD2pRTP_c5AF-gqo8_yIE07W_P09k2A9mTLvsKOG6g';

String getCurrentApiUrl() => '$baseUrl$apiVersion';

Map<String, String> getApiHeader() {
  return {
    'Api-Token':
        'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbiI6Ijc4bTBxIyNqejBiV25rWFIifQ.AUD2pRTP_c5AF-gqo8_yIE07W_P09k2A9mTLvsKOG6g'
  };
}
