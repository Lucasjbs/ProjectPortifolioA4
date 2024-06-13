<script setup>
import { Head } from '@inertiajs/vue3';
import Navbar from '@/Components/Custom/Navbar.vue';
import Footerbar from '@/Components/Custom/Footerbar.vue';
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
                    <div class="relative h-56 overflow-hidden rounded-lg md:h-96">
                        <!-- Item 1 -->
                        <div class="hidden duration-700 ease-in-out" data-carousel-item>
                            <img src="../../assets/homepage/college.jpg" class="absolute block w-9/12 -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
                            <div className="absolute inset-0 grid h-full w-full items-center bg-black/75">
                                <div className="w-3/4 pl-12 md:w-3/4 md:pl-40 lg:pl-60 carousel_content">
                                    <h3>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').university[0] : '' }}</h3>
                                    <p>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').university[1] : '' }}</p>
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
            <div class="proficiencies_content">
                <h2>{{ $t('HomepageSkillProficienciesTitle') }}</h2>
                <p>PHP: 90%</p>
                <p>Javascript: 60%</p>
                <p>GIT: 80%</p>
                <p>Laravel: 40%</p>
            </div>
        </div>

        <div class="contact_section">
            <div class="contact_content">
                <h2>{{ $t('HomepageContactTitle') }}</h2>
                <p>LinkedIn</p>
                <p>Github</p>
                <p>Youtube</p>
                <p>Email</p>
                <p>Whatsapp</p>
            </div>
        </div>

    </div>
    <Footerbar/>
</template>