<script>
import Container from '../components/Container.svelte';
import ActiveAccessPoints from '../components/ActiveAccessPoints.svelte';
</script>
<svelte:head>
	<title>Freifunk Ruhr - Home</title>
</svelte:head>
<Container>
	<section class="p-2">
		<div class="flex flex-col">
			<div class="text-xl text-center">Quick-Facts/Stats</div>
			<div class="flex">
				<div class="flex-1">
					<ActiveAccessPoints />
				</div>
				<div class="flex-1"></div>
				<div class="flex-1"></div>
			</div>
		</div>
	</section>
</Container>
