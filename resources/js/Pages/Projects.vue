<script setup>
import { Head } from '@inertiajs/vue3';
import Navbar from '@/Components/Custom/Navbar.vue';
import FooterBar from '@/Components/Custom/FooterBar.vue';
import '../../css/projects.css';

</script>

<template>

    <Head title="Projects" />
    <Navbar />

    <div class="projects_container">
        <h2>GitHub Projects: </h2>

        <div class="project_row_a">
            <h3>Web Development - Portfolio Website</h3>
            <p>This website....</p>

            <a href="https://github.com/Lucasjbs/ProjectPortifolioA4" target="_blank">
                <button type="button" class="flex items-center text-white bg-gradient-to-r from-gray-500 via-gray-600 to-gray-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-gray-300 dark:focus:ring-gray-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                    Go to GitHub Code
                    <img src="../../assets/homepage/logo-github.png" alt="GitHub Icon" class="w-5 h-5 mr-2">
                </button>
            </a>
        </div>

        <div class="project_row_b">
            <h3>Distributed Systems - Backup Systems with API Sockets</h3>
            <p>O Projeto consiste na criação de um sistema simples de backup distribuído, com suporte a alta disponibilidade 
                de dados. O projeto será construído usando a API sockets da linguagem Java.</p>

            <a href="https://github.com/Lucasjbs/sistemasDistribuidos" target="_blank">
                <button type="button" class="flex items-center text-white bg-gradient-to-r from-gray-500 via-gray-600 to-gray-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-gray-300 dark:focus:ring-gray-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                    Go to GitHub Code
                    <img src="../../assets/homepage/logo-github.png" alt="GitHub Icon" class="w-5 h-5 mr-2">
                </button>
            </a>
        </div>

        <div class="project_row_a">
            <h3>Inteligent Systems - Genetic Algorithm Project</h3>
            <p>O algoritmo foi desenvolvido visando obter o menor caminho a ser percorrido no grafo,
                atribuindo pesos às arestas e organizando-o em uma matriz, sendo os valores de -1
                representando caminhos inexistentes/impossíveis entre dados nós do grafo e os outros valores
                representando o peso da aresta que os liga......</p>

            <a href="https://github.com/Lucasjbs/sistemasInteligentes/tree/main/algoritmo_genetico" target="_blank">
                <button type="button" class="flex items-center text-white bg-gradient-to-r from-gray-500 via-gray-600 to-gray-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-gray-300 dark:focus:ring-gray-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                    Go to GitHub Code
                    <img src="../../assets/homepage/logo-github.png" alt="GitHub Icon" class="w-5 h-5 mr-2">
                </button>
            </a>
        </div>

        <div class="project_row_b">
            <h3>Inteligent Systems - AI Project</h3>
            <p>O Miniprojeto de Redes Neurais foi feito na linguagem de programação
                Java com o uso da biblioteca externa jfreechart para realizar a plotagem dos
                gráficos.....</p>

            <a href="https://github.com/Lucasjbs/sistemasInteligentes/tree/main/ProjetoIA" target="_blank">
                <button type="button" class="flex items-center text-white bg-gradient-to-r from-gray-500 via-gray-600 to-gray-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-gray-300 dark:focus:ring-gray-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                    Go to GitHub Code
                    <img src="../../assets/homepage/logo-github.png" alt="GitHub Icon" class="w-5 h-5 mr-2">
                </button>
            </a>
        </div>

        <div class="project_row_a">
            <h3>Data Structures - AVL Project</h3>
            <p>Este programa ler o arquivo salvo ("palavras.dat") e fornecer mecanismos para o usuário pesquisar as palavras que ele desejar.</p>

            <a href="https://github.com/Lucasjbs/linguagemC/blob/main/Projeto_AVL.c" target="_blank">
                <button type="button" class="flex items-center text-white bg-gradient-to-r from-gray-500 via-gray-600 to-gray-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-gray-300 dark:focus:ring-gray-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                    Go to GitHub Code
                    <img src="../../assets/homepage/logo-github.png" alt="GitHub Icon" class="w-5 h-5 mr-2">
                </button>
            </a>
        </div>
        
    </div>

    <FooterBar />
</template>