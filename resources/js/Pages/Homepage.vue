<script setup>
import { Head } from '@inertiajs/vue3';
import Navbar from '@/Components/Custom/Navbar.vue';
import Footerbar from '@/Components/Custom/Footerbar.vue';
import '../../css/homepage.css';
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
                <div class="experience_topic">
                    <h3>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').university[0] : '' }}</h3>
                    <p>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').university[1] : '' }}</p>
                </div>

                <div class="experience_topic">
                    <h3>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').internship[0] : '' }}</h3>
                    <p>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').internship[1] : '' }}</p>
                </div>

                <div class="experience_topic">
                    <h3>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').developer[0] : '' }}</h3>
                    <p>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').developer[1] : '' }}</p>
                </div>

                <div class="experience_topic">
                    <h3>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').personal[0] : '' }}</h3>
                    <p>{{ $t('HomepageExperienceProjects') !== 'HomepageExperienceProjects' ? $t('HomepageExperienceProjects').personal[1] : '' }}</p>
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