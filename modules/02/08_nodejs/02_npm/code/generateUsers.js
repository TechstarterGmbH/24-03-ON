const { faker } = require('@faker-js/faker');

function createRandomUsers() {
  let users = [];

  for (let i = 0; i < 5; i++) {
    const user = {
      userId: i,
      username: faker.internet.userName(),
      email: faker.internet.email(),
      password: faker.internet.password(),
      birthdate: faker.date.birthdate(),
      registeredAt: faker.date.past(),
    };

    users.push(user);
  }

  return users;

}

console.log(createRandomUsers());

exports.createRandomUsers = createRandomUsers;
