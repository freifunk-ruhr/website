<script>
import Container from './Container.svelte';
// TODO: Logic for fetching active access points
let activeAccessPoints = 0;
</script>
<Container>
  <span class="block text-center text-xl">{activeAccessPoints}</span><span class="block text-center text-gray-700"> Access-Points</span>
</Container>
