<template>
    <Head>
        <title>{{ $props.title ?? "Safebox - Simplificando sua Saúde, Minuto a Minuto." }} </title>
    </Head>
    <div class="bg-indigo-800 text-white">
        <div class="flex flex-wrap justify-between mx-80">
            <ul class="flex justify-between w-6/12">    
                <li>
                    <NuxtLink to="/" class="inline-block py-4 text-3xl hover:underline">Safebox</NuxtLink>
                    <div class="w-full bg-white h-1"></div>
                </li>
            </ul>
            <ul class="flex justify-between w-6/12">
                <li class="text-center w-full flex flex-col justify-center">
                    <NuxtLink to="/about-us" class="inline-block w-full py-4 hover:underline">Sobre Nós</NuxtLink>
                </li>
                <li class="text-center w-full flex flex-col justify-center">
                    <NuxtLink to="/start" class="inline-block w-full py-4 hover:underline">Começar</NuxtLink>
                </li>
                <li class="text-center w-full flex flex-col justify-center">
                    <NuxtLink to="/start" class="inline-block w-full py-4 hover:underline">Como funciona</NuxtLink>
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
