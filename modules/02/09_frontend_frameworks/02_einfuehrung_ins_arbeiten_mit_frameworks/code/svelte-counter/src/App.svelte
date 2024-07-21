<script>
  let counter = 0;

  function incrementCounter() {
    counter += 1;
  }
</script>

<style>
  .counter {
    font-size: 24px;
    margin-bottom: 10px;
  }

  button {
    font-size: 20px;
    padding: 10px;
  }
</style>

<div class="counter">{counter}</div>
<button on:click={incrementCounter}>Zähler erhöhen</button>
