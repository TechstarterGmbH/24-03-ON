import http from 'k6/http';
import { check, sleep } from 'k6';

const URL = 'http://127.0.0.1:8080/';

export const options = {
  stages: [
    { duration: '30s', target: 10 },
    { duration: '30s', target: 20 },
    { duration: '30s', target: 30 },
    { duration: '30s', target: 40 },
    { duration: '30s', target: 50 },
    { duration: '20s', target: 0 },
  ],
};

export default function () {
  const res = http.get(URL);
  check(res, { 'status was 200': (r) => r.status == 200 });
  sleep(1);
}
