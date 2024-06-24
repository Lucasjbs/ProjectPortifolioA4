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
                    <h3 v-if="!renderMode">Santa Catarina, Brazil</h3>
                    
                    <h5 v-if="renderMode">Web Developer</h5>
                    <h5 v-if="renderMode">Santa Catarina, Brazil</h5>
                </div>
            </div>

            <div class="summary" :class="{ 'rm_summary': renderMode }">
                <h3>Summary</h3>

                <p>Hello! I'm Lucas Bastos, a Computer Engineer graduated from
                    Instituto Federal, dedicated to my work in web development with
                    backend using PHP. Throughout my professional journey, I have
                    navigated challenging paths that taught me the importance of
                    discipline, collaboration, continuous learning, and the relentless
                    pursuit of professional growth.</p>

                <p>Currently, I am seeking new connections and opportunities to work in
                    backend development, to exchange ideas, grow professionally, and if
                    possible, work abroad.
                </p>
                <p>I have work experience in PHP development, exploring the Slim
                    framework, HyperF library, MySQL, Docker, and adhering to
                    UML standards, test-driven development (TDD), and SCRUM
                    methodology.</p>
            </div>

            <div class="experience" :class="{ 'rm_experience': renderMode }">
                <h3>Experience</h3>
                <h4>MOVA | Credit as a Service</h4>
                <h5>Junior Programmer
                    January 2023 - January 2024 (1 year 1 month)
                    São Paulo, Brasil
                </h5>
                <p>Mova is the 1st Peer-to-Peer Lending platform approved and supervised by
                    the Brazilian Central Bank in the form of a Peer-to-Peer Loan Society (SEP)</p>
                <p>Responsibilities:
                    - Development and execution of backend projects and services, using Slim
                    and HyperF technologies.
                    - Development and implementation of test coverage strategies.
                    - Integration with the MySQL database and use of Elastic to optimize
                    performance and scalability.
                    Results:
                    Page 1 of 2
                    - Achieved a high success rate in rectifying over 90% of tests for projects and
                    services within my team, including the company's largest project.
                    - Participated on the implementation of Access Tags for website clients,
                    significantly improving user experience and bolstering security measures.
                    - Participated on the adjustments in the generation of documentation for
                    document 3040 to BACEN (Brazilian Central Bank), ensuring both compliance
                    and process efficiency.
                    - Established secure registration protocols for operator identification through
                    encrypted data, thereby enhancing operational security.
                    - Successfully executed CI/CD migrations, contributing to the refinement of
                    continuous integration and continuous delivery processes.
                    - Executed migrations from services previously developed in Slim to the
                    HyperF architecture, resulting in enhanced performance and scalability.</p>
            </div>

            <div class="education" :class="{ 'rm_education': renderMode }">
                <h3>Education</h3>
                <h4>Instituto Federal de Educação, Ciência e Tecnologia do Sul de
                    Minas Gerais
                </h4>
                <p>Bacharelado em Engenharia, Engenharia de Computação · (2016 - 2023)</p>
                <p>LINK DO DIPLOMA + CONSERTAR DATA NO LINKEDIN</p>
            </div>
        </div>
        <div class="left_side" :class="{ 'rm_left_side': renderMode }">
            <div class="contact">
                <h3>Contact</h3>
                <p>(35) 98404-3366</p>
                <p>lucasjbastos26@gmail.com</p>
                <a href="https://www.linkedin.com/in/lucas-junqueira-bastos-85b89b203/" target="_blank">
                    <p>https://www.linkedin.com/in/lucas-junqueira-bastos-85b89b203/</p>
                </a>
                <a href="https://github.com/Lucasjbs" target="_blank">
                    <p>https://github.com/Lucasjbs</p>
                </a>
            </div>

            <div class="skills">
                <h3>Skills</h3>
                <ul>
                    <li>Stack: Laravel + Vue</li>
                    <li>Raw PHP</li>
                    <li>Git Version Control</li>
                    <li>Object Orientation Programming</li>
                    <li>SOLID Principles</li>
                    <li>Project Documentation</li>
                </ul>
            </div>

            <div class="language">
                <h3>Languages</h3>
                <ul>
                    <li>Portuguese - Native</li>
                    <li>English - (Check level with AI)</li>
                </ul>
            </div>

            <div class="certifications">
                <h3>Certifications</h3>
                <ul>
                    <li>Alura - Formação Aprenda a programar em PHP</li>
                    <li>Alura - Aprofunde em PHP com arquitetura e padrões de projeto</li>
                    <li>Alura - Formação Segurança de software com OWASP</li>
                    <li>Mova - Certificado de participação Hyperf</li>
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
    font-size: 18px;
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
    font-size: 16px;
}

</style>