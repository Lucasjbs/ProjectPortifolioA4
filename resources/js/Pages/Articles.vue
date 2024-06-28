<script setup>
import { Head } from '@inertiajs/vue3';
import Navbar from '@/Components/Custom/Navbar.vue';
import FooterBar from '@/Components/Custom/FooterBar.vue';
import '../../css/articles.css';

</script>

<template>

    <Head title="Articles" />
    <Navbar />
    <h2>Articles List:</h2>
    <hr>

    <div class="articles_container">
        <div class="grid_block">
            <a href="/article/1">
                <div class="block_thumb">
                    <img src="../../assets/articles/articleThumb1.jpg" />
                </div>
                <p>My Experience with Front End Development</p>
            </a>
        </div>
        <div class="grid_block">
            <a href="/article/2">
                <div class="block_thumb">
                    <img src="../../assets/articles/articleThumb2.jpg" />
                </div>
                <p>Web Hosting and Apache</p>
            </a>
        </div>
        <div class="grid_block">
            <a href="/article/3">
                <div class="block_thumb">
                    <img src="../../assets/articles/articleThumb3.jpg" />
                </div>
                <p>MySQL Database - Beginner's Guide</p>
            </a>
        </div>
        <div class="grid_block">
            <a href="/article/4">
                <div class="block_thumb">
                    <img src="../../assets/articles/articleThumb4.jpg" />
                </div>
                <p>Back End Requirements for a CRUD Session</p>
            </a>
        </div>

    </div>

    <FooterBar />
</template>