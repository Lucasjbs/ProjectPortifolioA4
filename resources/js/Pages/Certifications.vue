<script setup>
import { Head } from '@inertiajs/vue3';
import Navbar from '@/Components/Custom/Navbar.vue';
import FooterBar from '@/Components/Custom/FooterBar.vue';
import CardIcon from '@/Components/Custom/CardIcon.vue';
import HyperlinkIcon from '@/Components/Custom/HyperlinkIcon.vue';
import Dropdown from '@/Components/Custom/Dropdown.vue';
import CertificationCard from '@/Components/Custom/CertificationCard.vue';
import '../../css/certifications.css';

import Diploma from '../../assets/certifications/diploma.pdf';
import AluraGroup1 from '../../assets/certifications/alura_group_1.pdf';
import Mova1 from '../../assets/certifications/mova_1.pdf';
import Dio1 from '../../assets/certifications/dio_1.pdf';
import AluraIndv1 from '../../assets/certifications/alura_indv_1.pdf';

</script>

<script>
export default {
  components: {
    Dropdown,
  },
  data() {
    return {
      selectedId: 0,
    };
  },
  methods: {
    handleValueFromChild(value) {
        if (value != this.selectedId){
            this.selectedId = value;
        }
    },
  },
};
</script>

<template>
    <Head title="Certifications" />
    <Navbar />

    <div class="dropdown_bar">
        <Dropdown @idEmitted="handleValueFromChild"/>
    </div>

    <div class="certifications_container">
        <div v-if="selectedId === 1" class="certification_list college_cards">
            <CertificationCard 
                cardColor="green" 
                certificateName="Mediadores Virtuais de Ensino (7)"
                certificateDescription="Bolsista no programa de Mediadores Virtuais de Ensino." 
                :certificateRef="Diploma"
                class="certification_card"/>
            <CertificationCard 
                cardColor="green" 
                certificateName="Diploma" 
                certificateDescription="Bacharel in Computer Engineering." 
                :certificateRef="Diploma"
                class="certification_card"/>
            <CertificationCard 
                cardColor="green" 
                certificateName="Oficina de Compostagem (10)"
                certificateDescription="Compostagem: estrutura de uma leira estática de aeração passiva" 
                :certificateRef="Diploma"
                class="certification_card"/>
            <CertificationCard 
                cardColor="green" 
                certificateName="Palestra" 
                certificateDescription="Matando a fome do mercado de TI" 
                :certificateRef="Diploma"
                class="certification_card"/>
            <CertificationCard 
                cardColor="green" 
                certificateName="Palestra" 
                certificateDescription="I Ciclo de Seminários de Pesquisa" 
                :certificateRef="Diploma"
                class="certification_card"/>
            <CertificationCard 
                cardColor="green" 
                certificateName="Voluntário" 
                certificateDescription="Torneio E-Sports dos Institutos Federais (TEIF)" 
                :certificateRef="Diploma"
                class="certification_card"/>
            <CertificationCard 
                cardColor="green" 
                certificateName="Evento" 
                certificateDescription="Startup Weekend Machado" 
                :certificateRef="Diploma"
                class="certification_card"/>
        </div>

        <div v-if="selectedId === 2" class="certification_list alura_group_cards">
            <CertificationCard 
                cardColor="blue" 
                certificateName="Formação Aprenda a programar em PHP" 
                certificateDescription="Finalizou 8 cursos da formação com carga horária estimada em 71 horas." 
                :certificateRef="AluraGroup1"
                class="certification_card"/>
        </div>

        <div v-if="selectedId === 3" class="certification_list mova_cards">
            <CertificationCard 
                cardColor="purple" 
                certificateName="SEGURANÇA DE SOFTWARE COM OWASP" 
                certificateDescription="Finalizou 6 cursos da formação com carga horária estimada em 42 horas" 
                :certificateRef="Mova1"
                class="certification_card"/>
        </div>

        <div v-if="selectedId === 4" class="certification_list dio_cards">
            <CertificationCard 
                cardColor="orange" 
                certificateName="Bootcamp Nexa" 
                certificateDescription="Bootcamp Nexa - Fundamentos de IA Generativa e Claude 3" 
                :certificateRef="Dio1"
                class="certification_card"/>
        </div>

        <div v-if="selectedId === 5" class="certification_list alura_indv_cards">
            <CertificationCard 
                cardColor="darkblue" 
                certificateName="DOCKER" 
                certificateDescription="CRIANDO E GERENCIANDO CONTAINERS" 
                :certificateRef="AluraIndv1"
                class="certification_card"/>
        </div>

    </div>
    <FooterBar />
</template>