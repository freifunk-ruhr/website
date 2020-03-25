<script>
	import Container from '../components/Container.svelte';
	export let status;
	export let error;
	const dev = process.env.NODE_ENV === 'development';
</script>

<svelte:head>
	<title>Freifunk Ruhr - {status}</title>
</svelte:head>
<Container>
	<div class="px-6 py-4">
	<div class="font-bold text-4xl mb-2 text-center">{status}</div>
	<p class="text-gray-700 text-center">
			{error.message}
	</p>
	{#if dev && error.stack}
		<pre>{error.stack}</pre>
	{/if}
	</div>
</Container>
