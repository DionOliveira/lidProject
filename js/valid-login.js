const login = document.querySelector('input[name="login"]');
const password = document.querySelector('input[name="password"]');

const form = document.querySelector("form");

const textForm = document.getElementById("allfild");
const textLogin = document.getElementById("textLogin");
const textPassword = document.getElementById("textPassword");

form.addEventListener("submit", (e) => {
  if (password.value == "" || login.value == "") {
    textForm.textContent = "Fill all fields";
  } else if (
    validatorPassword(password.value) === true &&
    validatorLogin(login.value) === true
  ) {
    textForm.textContent = "";
    textLogin.textContent = "";
    return;
  } else {
    console.log("Requisição não atendida");
  }

  e.preventDefault();
});

login.addEventListener("keyup", () => {
  if (validatorLogin(login.value) !== true) {
    textLogin.textContent =
      "Login format must be at least 4 characters only use number and letter";
  } else {
    textLogin.textContent = "";
  }
});

password.addEventListener("keyup", () => {
  if (validatorPassword(password.value) !== true) {
    textPassword.textContent =
      "Password format must be at least 6 characters only use number and letter";
  } else {
    textPassword.textContent = "";
  }
});

function validatorPassword(password) {
  let passwordPattern = /^[_a-z0-9-]{6,}$/;
  return passwordPattern.test(password);
}

function validatorLogin(login) {
  let loginPattern = /^[_a-z0-9-]{4,}$/;
  return loginPattern.test(login);
}
