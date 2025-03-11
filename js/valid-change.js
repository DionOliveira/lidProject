const login = document.querySelector('input[name="login"]');
const password = document.querySelector('input[name="password"]');
const cpassword = document.querySelector('input[name="cpassword"]');
const oldpassword = document.querySelector('input[name="oldpassword"]');

const form = document.querySelector("form");

const textForm = document.getElementById("allfild");
const textLogin = document.getElementById("textLogin");
const textPassword = document.getElementById("textPassword");
const textCPassword = document.getElementById("textCPassword");
const textEmail = document.getElementById("textEmail");
const textOPassword = document.getElementById("textOPassword");

function validatorPassword(password) {
  let passwordPattern = /^[_a-z0-9-]{6,}$/;
  return passwordPattern.test(password);
}

function validatorCPassword(cpassword, password) {
  if (cpassword === password) {
    return true;
  } else {
    return false;
  }
}

function validatorLogin(login) {
  let loginPattern = /^[_a-z0-9-]{4,}$/;
  return loginPattern.test(login);
}

form.addEventListener("submit", (e) => {
  if (
    oldpassword.value == "" ||
    password.value == "" ||
    cpassword.value == "" ||
    login.value == ""
  ) {
    textForm.textContent = "Fill all fields";
  } else if (
    validatorPassword(password.value) === true &&
    validatorCPassword(cpassword.value, password.value) === true
  ) {
    textForm.textContent = "";
    textPassword.textContent = "";
    textCPassword.textContent = "";

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

cpassword.addEventListener("keyup", () => {
  if (cpassword.value === "") {
    textCPassword.textContent = "Fill Comfirm Password ";
  } else if (validatorCPassword(cpassword.value, password.value) !== true) {
    textCPassword.textContent = "Comfirm Password dont does not match";
  } else {
    textCPassword.textContent = "";
  }
});
