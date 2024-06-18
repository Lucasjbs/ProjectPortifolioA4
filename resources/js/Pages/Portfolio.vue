<script setup>
import { Head } from '@inertiajs/vue3';
import Navbar from '@/Components/Custom/Navbar.vue';
import FooterBar from '@/Components/Custom/FooterBar.vue';
import '../../css/portfolio.css';

</script>

<template>
    <Head title="Portfolio" />
    <Navbar/>

    <div class="portfolio_container">
        <div class="right_side">
            <div class="main_title">
                <h2>Lucas Junqueira Bastos</h2>
                <h3>Software Engineer Junior | Laravel + Vue | PHP</h3>
                <h3>Resende, Rio de Janeiro, Brazil</h3>
            </div>

            <div class="summary">
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

            <div class="experience">
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

            <div class="education">
                <h3>Education</h3>
                <h4>Instituto Federal de Educação, Ciência e Tecnologia do Sul de
                    Minas Gerais
                    </h4>
                <p>Bacharelado em Engenharia, Engenharia de Computação · (2016 - 2023)</p>
            </div>

            <div class="certifications">
                <h3>Certifications</h3>
                <p>ADD FORMATIONS SECTION</p>
            </div>
        </div>
        <div class="left_side">
            <div class="contact">
                <h3>Contact</h3>
                <p>(35) 98404-3366</p>
                <p>lucasjbastos26@gmail.com</p>
                <p>https://www.linkedin.com/in/lucas-junqueira-bastos-85b89b203/</p>
                <p>https://github.com/Lucasjbs</p>
            </div>

            <div class="skills">
                <p>Git</p>
                <p>PHP</p>
                <p>Laravel</p>
                <p>Vue</p>
                <p>SOLID</p>
            </div>

            <div class="language">
                <p>English (see level with chat gpt)</p>
                <p>Portuguese (native)</p>
            </div>
        </div>
    </div>

    <FooterBar/>
</template>