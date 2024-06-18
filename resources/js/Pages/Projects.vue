<script setup>
import { Head } from '@inertiajs/vue3';
import Navbar from '@/Components/Custom/Navbar.vue';
import FooterBar from '@/Components/Custom/FooterBar.vue';
import '../../css/homepage.css';

</script>

<template>

    <Head title="Projects" />
    <Navbar />

    <div class="projects_container">
        <h2>GitHub Projects</h2>

        <h3>College WebCrawler</h3>
        <h3>DIO AI</h3>
        <h3>Raw PHP portfolio</h3>
        <h3>Laravel/Vue portfolio</h3>
    </div>

    <FooterBar />
</template>