<script setup>
import { Head } from '@inertiajs/vue3';
import Navbar from '@/Components/Custom/Navbar.vue';
import FooterBar from '@/Components/Custom/FooterBar.vue';
import '../../css/portfolio.css';

defineProps({
    renderMode: {
        type: Boolean,
        required: true,
    },
});

</script>

<script>
import pdfCV from '../../assets/portfolio/CV_EN3.pdf';

export default {
  data() {
    return {
      pdfUrl: pdfCV
    };
  },
  mounted() {
    this.cvHandler();
  },
  methods: {
    cvHandler() {
      if (this.renderMode) {
        // additional configs if needed
      }
    },
    downloadPDF() {
      fetch(pdfCV)
        .then(response => response.blob())
        .then(blob => {
          const url = window.URL.createObjectURL(blob);
          const link = document.createElement('a');
          link.href = url;
          link.setAttribute('download', 'CV_EN3.pdf');
          document.body.appendChild(link);
          link.click();
          document.body.removeChild(link);
          window.URL.revokeObjectURL(url);
        })
        .catch(err => console.error('Error fetching the PDF:', err));
    }
  }
};
</script>

<template>

    <Head title="Portfolio" />
    <Navbar v-if="!renderMode"/>

    <div class="portfolio_container" :class="{ 'rm_portfolio_container': renderMode }">
        <div class="right_side" :class="{ 'rm_right_side': renderMode }">

            <div class="main_title">
                <div class="title_image">
                    <img src="../../assets/portfolio/linkedin-profile-pic.png" />
                </div>
                <div class="title_description">
                    <h2>Lucas Junqueira Bastos</h2>
                    <h3 v-if="!renderMode">Web Developer</h3>
                    <h3 v-if="!renderMode">Santa Catarina, Brasil</h3>
                    
                    <h5 v-if="renderMode">Web Developer</h5>
                    <h5 v-if="renderMode">Santa Catarina, Brasil</h5>
                </div>
            </div>

            <div class="summary" :class="{ 'rm_summary': renderMode }">
                <h3>Resumo</h3>

                <p>
                    Experiente em desenvolvimento de códigos back-end em ambientes dinâmicos como o de startups de tecnologia, 
                    juntamente com experiência prática como desenvolvedor full-stack em diversos projetos universitários e 
                    pessoais.
                </p>
                <p>
                    Ao longo de minha jornada profissional, passei por situações desafiadoras que me ensinaram a importância da disciplina, 
                    da colaboração, do aprendizado contínuo e da busca incessante pelo crescimento profissional. Atualmente, estou buscando novas 
                    conexões e oportunidades para trabalhar como desenvolvedor, trocar ideias e crescer profissionalmente.
                </p>
            </div>

            <div class="experience" :class="{ 'rm_experience': renderMode }">
                <h3>Experiência</h3>

                <h4>MOVA | Credit as a Service</h4>
                <h5>Programador Júnior</h5>
                <h5>Janeiro de 2023 - Janeiro de 2024, Remoto</h5>

                <p>
                    A Mova é a primeira plataforma de empréstimo peer-to-peer aprovada e supervisionada pelo Banco Central do Brasil na 
                    forma de uma Sociedade de Empréstimo entre Pessoas (SEP).
                </p>

                <p>Responsabilidades:</p>
                    <p>- Desenvolvimento e execução de projetos e serviços de backend, utilizando as tecnologias Slim e HyperF.</p>
                    <p>- Desenvolvimento e implementação de estratégias de cobertura de testes.</p>
                    <p>- Integração com o banco de dados MySQL e uso do Elastic para otimizar desempenho e escalabilidade.</p>
                <p>Resultados:</p>
                    
                    <p>- Participei da implementação de Tags de Acesso para clientes do site, melhorando significativamente a experiência do usuário e fortalecendo as medidas de segurança.</p>
                    <p>- Participei dos ajustes na geração de documentação para o documento 3040 do BACEN (Banco Central do Brasil), garantindo tanto a conformidade quanto a eficiência do processo.</p>
                    <p>- Estabeleci protocolos seguros de registro para identificação de operadores por meio de dados criptografados, aumentando assim a segurança operacional.</p>
                    <p>- Executei com sucesso migrações CI/CD, contribuindo para o aprimoramento dos processos de integração contínua e entrega contínua.</p>
                    <p>- Executei migrações de serviços previamente desenvolvidos em Slim para a arquitetura HyperF, resultando em um desempenho e escalabilidade aprimorados.</p>
                
                <hr>

                <h4>MOVA | Credit as a Service</h4>
                <h5>Estágiário</h5>
                <h5>Maio de 2022 - Janeiro de 2023, Remoto</h5>

                <p>Responsabilidades:</p>
                <p>- Aprender diversas tecnologias, incluindo Docker, PHP Slim Framework, conexões de banco de dados e controle de versão.</p>
                <p>- Acompanhar de perto o trabalho dos colaboradores em tempo integral.</p>
                <p>- Participar ativamente dos projetos, a fim de ganhar experiência prática e contribuir com os esforços da equipe.</p>
                
                <hr>

                <h4>Instituto Federal de Educação, Ciência e Tecnologia do Sul de Minas Gerais</h4>
                <h5>Programa de Mediadores Virtuais de Ensino</h5>
                <h5>Março de 2021 - Agosto de 2021, Poços de Caldas, Minas Gerais, Brasil</h5>

                <p>Bolsista no programa de mediadores virtuais de ensino, cujo propósito era auxiliar a comunicação entre alunos e professores durante o ensino remoto, sob a orientação do coordenador educacional André Gripp.</p>
                
            </div>

            <div class="education" :class="{ 'rm_education': renderMode }">
                <h3>Educação</h3>
                <h4>Instituto Federal de Educação, Ciência e Tecnologia do Sul de Minas Gerais</h4>
                <p>Bacharelado em Engenharia, Engenharia de Computação · (2016 - 2022)</p>
                <div class="validation">
                <p>Endereço de Validação: </p> <a href="https://suap.ifsuldeminas.edu.br/edu/diploma_digital/6388/1082.1082.12415f4847b3/" target="_blank">https://suap.ifsuldeminas.edu.br/edu/diploma_digital/6388/1082.1082.12415f4847b3/</a>
                </div>
            </div>
        </div>
        <div class="left_side" :class="{ 'rm_left_side': renderMode }">
            <div class="contact">
                <h3>Contato</h3>
                <p>+55 35 98404-3366</p>
                <p>lucasjbastos26@gmail.com</p>
                <a href="https://www.linkedin.com/in/lucas-junqueira-bastos-85b89b203/" target="_blank">
                    <p>https://www.linkedin.com/in/lucas-junqueira-bastos-85b89b203/</p>
                </a>
                <a href="https://github.com/Lucasjbs" target="_blank">
                    <p>https://github.com/Lucasjbs</p>
                </a>
            </div>

            <div class="skills">
                <h3>Habilidades e Competências</h3>
                <ul>
                    <li>PHP Puro</li>
                    <li>Framework Slim</li>
                    <li>Laravel</li>
                    <li>Vue.Js</li>
                    <li>MySQL - Banco de Dados</li>
                    <li>Git - Controle de Versão</li>
                    <li>Documentação de Projetos de Código</li>
                    <li>Programação Orientada a Objetos - Paradigma</li>
                    <li>Principios SOLID</li>
                    <li>Javascript</li>
                    <li>Java</li>
                </ul>
            </div>

            <div class="language">
                <h3>Línguas</h3>
                <ul>
                    <li>Português - Nativo</li>
                    <li>Inglês - Avançado</li>
                </ul>
            </div>

            <div class="certifications">
                <h3>Certificados</h3>
                <ul>
                    <li>Alura - Formação Aprenda a programar em PHP</li>
                    <li>Alura - Formação PHP</li>
                    <li>Alura - Formação Aprofunde em PHP com arquitetura e padrões de projeto</li>
                    <li>Alura - Formação Segurança de software com OWASP</li>
                    <li>MOVA - Certificado de participação Hyperf</li>
                    <li>DIO - Bootcamp Nexa - Fundamentos de IA Generativa e Claude 3</li>
                    <li>IF - Startup Weekend Machado</li>
                </ul>
            </div>
        </div>
    </div>

    <hr>
    <div class="pdf_buttons" v-if="!renderMode">
        <a :href="pdfUrl" target="_blank">
            <button type="button" class="flex items-center text-white bg-gradient-to-r from-red-800 via-red-600 to-red-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-red-300 dark:focus:ring-red-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                Visualize PDF 
                <img src="../../assets/portfolio/logo-pdf.png" alt="PDF Icon" class="w-5 h-5 mr-2">
            </button>
        </a>

        <button @click="downloadPDF" type="button" class="flex items-center text-white bg-gradient-to-r from-red-800 via-red-600 to-red-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-red-300 dark:focus:ring-red-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
            Download PDF 
            <img src="../../assets/portfolio/logo-pdf.png" alt="PDF Icon" class="w-5 h-5 mr-2">
        </button>
    </div>

    <FooterBar v-if="!renderMode"/>
</template>



<style>
.rm_portfolio_container h2{
    font-size: 28px;
}

.rm_portfolio_container h5{
    font-size: 16px;
    font-weight: bold;
}

.rm_portfolio_container p{
    font-size: 16px;
}

.rm_right_side {
    width: 60%;
    padding: 0;
    padding-right: 8px;
}

.rm_right_side h3{
    font-size: 22px;
}

.rm_summary{
    padding-top: 4px;
}

.rm_experience{
    padding-top: 4px;
}

.rm_experience h4{
    font-size: 20px;
}

.rm_education{
    padding-top: 4px;
}

.rm_left_side p{
    font-size: 14px;
}

</style>