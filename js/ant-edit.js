document.querySelectorAll('input[type="hidden"]').forEach((input) => {
  const originalType = input.type;

  Object.defineProperty(input, "type", {
    set: function (value) {
      if (value !== originalType) {
        console.warn("Tentativa de alteração do tipo do campo oculto!");
        // Impede a alteração do tipo
        return;
      }
    },
    get: function () {
      return originalType;
    },
  });
});
