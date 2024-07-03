<script setup>
import { Head } from '@inertiajs/vue3';
import Navbar from '@/Components/Custom/Navbar.vue';
import FooterBar from '@/Components/Custom/FooterBar.vue';
import RadialBar from '@/Components/Custom/RadialBar.vue';
import ProgressBar from '@/Components/Custom/ProgressBar.vue';
import '../../css/homepage.css';
</script>

<script>
// https://stackoverflow.com/questions/76043935/flowbite-is-not-working-with-inertia-laravel-app
// https://www.material-tailwind.com/docs/react/carousel
import { initFlowbite } from "flowbite";

export default {

    mounted() {
        initFlowbite();
    },
    methods: {
        copyEmail() {
        navigator.clipboard.writeText("lucasjbastos26@gmail.com").then(() => {
            alert('Email copied to clipboard!');
        });
        },
    },
}
</script>

<template>
    <Head title="Homepage" />
    <Navbar/>

    <div id="page_content">
        <div class="overview_section">
            <div class="left_overview">
                <img src="../../assets/homepage/ljb_profile.jpg" />
            </div>

            <div class="right_overview">
                <h2>{{ $t('HomepageDevTitle') }}</h2>
                <p>{{ $t('HomepageIntroduction') }}</p>

                <h2>{{ $t('HomepageSkillOverview') !== 'HomepageSkillOverview' ? $t('HomepageSkillOverview').title : '' }}</h2>
                <p>» {{ $t('HomepageSkillOverview') !== 'HomepageSkillOverview' ? $t('HomepageSkillOverview').items[0] : '' }}</p>
                <p>» {{ $t('HomepageSkillOverview') !== 'HomepageSkillOverview' ? $t('HomepageSkillOverview').items[1] : '' }}</p>
                <p>» {{ $t('HomepageSkillOverview') !== 'HomepageSkillOverview' ? $t('HomepageSkillOverview').items[2] : '' }}</p>
                <p>» {{ $t('HomepageSkillOverview') !== 'HomepageSkillOverview' ? $t('HomepageSkillOverview').items[3] : '' }}</p>
                <p>» {{ $t('HomepageSkillOverview') !== 'HomepageSkillOverview' ? $t('HomepageSkillOverview').items[4] : '' }}</p>
                <p>» {{ $t('HomepageSkillOverview') !== 'HomepageSkillOverview' ? $t('HomepageSkillOverview').items[5] : '' }}</p>
                <p>» {{ $t('HomepageSkillOverview') !== 'HomepageSkillOverview' ? $t('HomepageSkillOverview').items[6] : '' }}</p>
            </div>
        </div>

        <div class="aboutme_section">
            <div class="aboutme_title">
                <h2>{{ $t('HomepageAboutMeTitle') }}</h2>
            </div>
            <div class="aboutme_text">
                <div class="col-3"></div>
                <div>
                    <p>{{ $t('HomepageAboutMeParagraph') }}</p>
                </div>
                <div class="col-3"></div>
            </div>
        </div>

        <div class="experience_section">
            <div class="experience_content">
                <h2>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').title : '' }}</h2>
                
                <div id="default-carousel" class="relative w-full" data-carousel="static">
                    <div class="relative h-96 overflow-hidden rounded-lg md:h-96">
                        <!-- Item 1 -->
                        <div class="hidden duration-700 ease-in-out" data-carousel-item>
                            <img src="../../assets/homepage/college.jpg" class="absolute block w-9/12 -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
                            <div className="absolute inset-0 grid h-full w-full items-center bg-black/75">
                                <div className="w-3/4 pl-12 md:w-3/4 md:pl-40 lg:pl-60 carousel_content">
                                    <h3>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').university[0] : '' }}</h3>
                                    <p>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').university[1] : '' }}</p>
                                    <p>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').university[2] : '' }}</p>
                                </div>
                            </div>
                        </div>
                        <!-- Item 2 -->
                        <div class="hidden duration-700 ease-in-out" data-carousel-item>
                            <img src="../../assets/homepage/intern_office.jpg" class="absolute block w-9/12 -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
                            <div className="absolute inset-0 grid h-full w-full items-center bg-black/75">
                                <div className="w-3/4 pl-12 md:w-3/4 md:pl-40 lg:pl-60 carousel_content">
                                    <h3>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').internship[0] : '' }}</h3>
                                    <p>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').internship[1] : '' }}</p>
                                    <p>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').internship[2] : '' }}</p>
                                </div>
                            </div>
                        </div>
                        <!-- Item 3 -->
                        <div class="hidden duration-700 ease-in-out" data-carousel-item>
                            <img src="../../assets/homepage/junior_office.jpg" class="absolute block w-9/12 -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
                            <div className="absolute inset-0 grid h-full w-full items-center bg-black/75">
                                <div className="w-3/4 pl-12 md:w-3/4 md:pl-40 lg:pl-60 carousel_content">
                                    <h3>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').developer[0] : '' }}</h3>
                                    <p>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').developer[1] : '' }}</p>
                                    <p>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').developer[2] : '' }}</p>
                                </div>
                            </div>
                        </div>
                        <!-- Item 4 -->
                        <div class="hidden duration-700 ease-in-out" data-carousel-item>
                            <img src="../../assets/homepage/home_office.jpg" class="absolute block w-9/12 -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
                            <div className="absolute inset-0 grid h-full w-full items-center bg-black/75">
                                <div className="w-3/4 pl-12 md:w-3/4 md:pl-40 lg:pl-60 carousel_content">
                                    <h3>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').personal[0] : '' }}</h3>
                                    <p>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').personal[1] : '' }}</p>
                                    <p>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').personal[2] : '' }}</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Slider indicators -->
                    <div class="absolute z-30 flex -translate-x-1/2 bottom-5 left-1/2 space-x-3 rtl:space-x-reverse">
                        <button type="button" class="w-3 h-3 rounded-full" aria-current="true" aria-label="Slide 1" data-carousel-slide-to="0"></button>
                        <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 2" data-carousel-slide-to="1"></button>
                        <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 3" data-carousel-slide-to="2"></button>
                        <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 4" data-carousel-slide-to="3"></button>
                    </div>
                    <!-- Slider controls -->
                    <button type="button" class="absolute top-0 start-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none" data-carousel-prev>
                        <span class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
                            <svg class="w-4 h-4 text-white dark:text-gray-800 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 1 1 5l4 4"/>
                            </svg>
                            <span class="sr-only">Previous</span>
                        </span>
                        </button>
                    <button type="button" class="absolute top-0 end-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none" data-carousel-next>
                        <span class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
                            <svg class="w-4 h-4 text-white dark:text-gray-800 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4"/>
                            </svg>
                            <span class="sr-only">Next</span>
                        </span>
                        </button>
                </div>
            </div>
        </div>

        <div class="proficiencies_section">
            <h2>{{ $t('HomepageSkillProficienciesTitle') }}</h2>
            <div class="proficiencies_content">
                <!-- find a model for this section -->
                <div class="proficiencies_left_section">
                    <p>PHP</p>
                    <ProgressBar :percentage="Number(90)"/>
                    <p>Javascript</p>
                    <ProgressBar :percentage="Number(60)"/>
                    <p>GIT</p>
                    <ProgressBar :percentage="Number(80)"/>
                    <p>Laravel</p>
                    <ProgressBar :percentage="Number(40)"/>
                    <p>Tailwind</p>
                    <ProgressBar :percentage="Number(40)"/>
                    <p>Frontedn Basics (HTML + CSS)</p>
                    <ProgressBar :percentage="Number(80)"/>
                    <p>MySQL</p>
                    <ProgressBar :percentage="Number(60)"/>
                    <p>Docker</p>
                    <ProgressBar :percentage="Number(30)"/>
                    <p>Artificical Intelligence</p>
                    <ProgressBar :percentage="Number(30)"/>
                </div>
                <div class="proficiencies_right_section">
                    <div class="secondary_skills">
                        <RadialBar :percentage="Number(70)"/>
                        <p>Object Oriented Programming (OOP)</p>
                    </div>
                    <div class="secondary_skills">
                        <RadialBar :percentage="Number(70)"/>
                        <p>SOLID Standards</p>
                    </div>
                    <div class="secondary_skills">
                        <RadialBar :percentage="Number(20)"/>
                        <p>CI/CD</p>
                    </div>
                    <div class="secondary_skills">
                        <RadialBar :percentage="Number(70)"/>
                        <p>Code Documentation</p>
                    </div>
                    <div class="secondary_skills">
                        <RadialBar :percentage="Number(30)"/>
                        <p>Artificical Intelligence</p>
                    </div>
                    <div class="secondary_skills">
                        <RadialBar :percentage="Number(50)"/>
                        <p>Data Structures</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="contact_section">
            <h2>{{ $t('HomepageContactTitle') }}</h2>
            <div class="contact_content">
                <div class="flex items-center justify-center h-40">

                    <div class="button-container">
                        <a href="https://www.linkedin.com/in/lucas-junqueira-bastos-85b89b203/" target="_blank">
                            <button type="button" class="flex items-center text-white bg-gradient-to-r from-blue-500 via-blue-600 to-blue-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-blue-300 dark:focus:ring-blue-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                                LinkedIn
                                <img src="../../assets/homepage/logo-linkedin.png" alt="LinkedIn Icon" class="w-5 h-5 mr-2">
                            </button>
                        </a>

                        <a href="https://github.com/Lucasjbs" target="_blank">
                            <button type="button" class="flex items-center text-white bg-gradient-to-r from-gray-500 via-gray-600 to-gray-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-gray-300 dark:focus:ring-gray-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                                GitHub
                                <img src="../../assets/homepage/logo-github.png" alt="GitHub Icon" class="w-5 h-5 mr-2">
                            </button>
                        </a>

                        <button type="button" @click="copyEmail" class="flex items-center text-white bg-gradient-to-r from-orange-500 via-orange-600 to-orange-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-orange-300 dark:focus:ring-orange-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                            GMail
                            <img src="../../assets/homepage/logo-gmail.png" alt="GitHub Icon" class="w-5 h-5 mr-2">
                        </button>

                        <a href="https://www.youtube.com/channel/UCdxZm4YcdT77vaNf3L24xPg" target="_blank">
                            <button type="button" class="flex items-center text-white bg-gradient-to-r from-red-500 via-red-600 to-red-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-red-300 dark:focus:ring-red-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                                YouTube
                                <img src="../../assets/homepage/logo-youtube.png" alt="GitHub Icon" class="w-5 h-5 mr-2">
                            </button>
                        </a>

                        <a href="https://wa.me/5535984043366" target="_blank">
                            <button type="button" class="flex items-center text-white bg-gradient-to-r from-green-500 via-green-600 to-green-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-green-300 dark:focus:ring-green-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                                Whatsapp
                                <img src="../../assets/homepage/logo-whatsapp.png" alt="GitHub Icon" class="w-5 h-5 mr-2">
                            </button>
                        </a>
                    </div>
            
                </div>
            </div>
        </div>

    </div>
    <FooterBar/>
</template>