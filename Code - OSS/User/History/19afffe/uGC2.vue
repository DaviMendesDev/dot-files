<template>
    <Head>
        <title>{{ $props.title ?? "Safebox - Simplificando sua Saúde, Minuto a Minuto." }} </title>
    </Head>
    <div class="bg-indigo-800 text-white">
        <div class="flex flex-wrap justify-between mx-80">
            <ul class="flex justify-between w-3/12">    
                <li class="text-center w-full">
                    <NuxtLink to="/" class="inline-block w-full py-4 text-3xl hover:underline">Safebox</NuxtLink>
                </li>
            </ul>
            <ul class="flex justify-between w-3/12">
                <li class="text-center w-full flex flex-col justify-center">
                    <NuxtLink to="/about-us" class="inline-block w-full py-4 hover:underline">Sobre Nós</NuxtLink>
                </li>
                <li class="text-center w-full flex flex-col justify-center">
                    <NuxtLink to="/start" class="inline-block w-full py-4 hover:underline">Começar</NuxtLink>
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
export default {
    props: {
        title: String
    }
}
</script>
