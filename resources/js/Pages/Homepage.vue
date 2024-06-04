<!-- TO-DO: 
    1- Detach Navbar and Footer to seperate files
    2- Change languages functionality
    3- Hide/Show navbar functionality
    4- Check if User is Logged In functionality
    5- Experience and Projects Carousel with Images
    6- Skill proficiencies with graphs, progress bars and Skillset Hexagon
    7- Contact Info with Website Logos
-->

<script setup>
import { Head } from '@inertiajs/vue3';
import '../../css/homepage.css';

defineProps({
    canLogin: {
        type: Boolean,
    },
    canRegister: {
        type: Boolean,
    },
});
</script>

<script>
import usFlag from '../../assets/us_flag.svg';
import brFlag from '../../assets/br_flag.svg';

export default {
    data() {
        return {
            isRed: true,
            redIconSrc: usFlag,
            blueIconSrc: brFlag
        };
    },
    methods: {
        toggleColor() {
            this.isRed = !this.isRed;
        }
    }
};
</script>

<template>

    <Head title="Homepage" />
    <header>
        <div class="header_top">
            <div class="header_top_left">
                <img :src="isRed ? redIconSrc : blueIconSrc" @click="toggleColor" alt="Icon" />
            </div>
            <div class="header_top_right">
                <div class="hide_button">
                    Hide
                </div>
            </div>
        </div>

        <div class="header_main">
            <div class="header_main_left">
                <img src="../../assets/ljb_logo.png" />
            </div>
            <div class="header_main_middle">
                <a href="/homepage">Home Page</a>
                <a href="/portfolio">Portfolio</a>
                <a href="/certifications">Certifications</a>
                <a href="/articles">Articles</a>
                <a href="/projects">Projects</a>
            </div>
            <div class="header_main_right">
                <a href="/login">Log In</a>
                <a href="/register">Register</a>
            </div>
        </div>
    </header>

    <div id="page_content">
        <div class="overview_section">
            <div class="left_overview">
                <img src="../../assets/homepage/ljb_profile.jpg" />
            </div>

            <div class="right_overview">
                <h2>Fullstack Web Developer</h2>
                <p>Experienced in backend development within the dynamic environments of technology startups, coupled
                    with hands-on experience as a full-stack developer in various college and personal projects.</p>

                <h2>Skill Overview</h2>
                <p>» Experienced in PHP and Javascript development;</p>
                <p>» Experienced with Test-Driven Development (TDD) methodologies, using phpunit to ensure code
                    reliability;</p>
                <p>» Strong understanding of language fundamentals, object oriented programming (OOP), SOLID and best
                    practices;</p>
                <p>» Proficient in project documentation, with a focus on clear and comprehensive documentation to aid
                    in project understanding </p>and maintenance;
                <p>» Proficient in version control systems such as Git, GitHub, and GitLab, with experience in managing
                    code repositories and </p>collaborating with teams;
                <p>» Familiar with Slim Framework, HyperF and Elastic for efficient backend development;</p>
                <p>» Familiar with other programming languages, such as C/C++, Java, C#;</p>
            </div>
        </div>

        <div class="aboutme_section">
            <div class="aboutme_title">
                <h2>About me</h2>
            </div>
            <div class="aboutme_text">
                <div class="col-3"></div>
                <div>
                    <p>Hello! I'm Lucas Bastos, a dedicated software developer who, throughout my professional career,
                        went through challenging paths that taught me the importance of discipline, collaboration,
                        continuous learning, and the relentless pursuit of professional growth.
                        Currently, I am seeking new connections and opportunities to work in software development, to
                        exchange ideas and grow professionally.
                    </p>
                </div>
                <div class="col-3"></div>
            </div>
        </div>

        <div class="experience_section">
            <div class="experience_content">
                <h2>Experience and Projects</h2>
                <div class="experience_topic">
                    <h3>University</h3>
                    <p>In college I built compiler prototypes, web crawlers, websites, network simulations and more...
                    </p>
                </div>

                <div class="experience_topic">
                    <h3>Internship at Mova</h3>
                    <p>During my internship at Mova I put the fundamentals of programming into practice.
                        I learned how to use the slim framework with docker, gitlab and Linux as my operating system...
                    </p>
                </div>

                <div class="experience_topic">
                    <h3>Junior Backend Developer at Mova</h3>
                    <p>As an employee, I made documentations tying the code with the company's business model, created
                        and fixed test cases with phpunit, made CI/CD configurations and more...
                    </p>
                </div>

                <div class="experience_topic">
                    <h3>Personal Projects</h3>
                    <p>Made my own personal website from scratch, worked on freelance projects and continue to study to
                        improve my performance, with bootcamps and courses...
                    </p>
                </div>
            </div>
        </div>

        <div class="proficiencies_section">
            <div class="proficiencies_content">
                <h2>Skill Proficiencies</h2>
                <p>PHP: 90%</p>
                <p>Javascript: 60%</p>
                <p>GIT: 80%</p>
                <p>Laravel: 40%</p>
            </div>
        </div>

        <div class="contact_section">
            <div class="contact_content">
                <h2>Contact</h2>
                <p>LinkedIn</p>
                <p>Github</p>
                <p>Youtube</p>
                <p>Email</p>
                <p>Whatsapp</p>
            </div>
        </div>

    </div>

    <footer>
        <p>Created by Lucas J. Bastos - 2024 - Brazil</p>
    </footer>
</template>