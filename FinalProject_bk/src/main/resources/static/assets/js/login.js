const container1 = document.getElementById('container1');
const signInButton = document.getElementById('signIn');
const signUpButton = document.getElementById('signUp');

signInButton.addEventListener('click', () => {
  container1.classList.remove("right-panel-active");
});

signUpButton.addEventListener('click', () => {
  container1.classList.add("right-panel-active");
});

