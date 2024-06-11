<template>
  <UserHeader nombre="aqui va cabecera" email="hola mundo" />


  <div class="container-all-muestras" style="margin-top: 120px;">
    <div class="muestras-h2">
      <h2>Nuevo Informe</h2>
    </div>

    <div class="container-form-muestras">
      <form class="form-muestras" @submit.prevent="goToNextPart">
        <div style="display: flex; justify-content: space-between;">
          <div>
            <div>
              <label for="code">Código de la muestra</label>
              <input class="input-muestras" type="number" v-model="code" name="code" placeholder="Código" />
            </div>
            <div>
              <label for="nature">Naturaleza de la muestra</label>
              <div>
                <select class="input-muestras" v-model="nature" required>
                  <option name="nature" value="" selected>Tipo</option>
                  <option name="nature" value="Biopsia">Biopsia</option>
                  <option name="nature" value="otra">Otra</option>
                  <option name="nature" value="Nobiopsy">Nobiopsy</option>
                </select>
              </div>
            </div>
            <div>
              <label for="conservation">Conservación de muestra</label>
              <div>
                <select class="input-muestras" v-model="conservation" required>
                  <option name="conservation" value="" selected>Formato</option>
                  <option name="conservation" value="Formol">Formol</option>
                  <option name="conservation" value="Otro">Otro</option>
                  <option name="conservation" value="Formol2">Formol2</option>
                  <option name="conservation" value="Noformol">Noformol</option>
                </select>
              </div>
            </div>
          </div>
          <div>
            <div>
              <label for="dateColected">Fecha de recolección</label>
              <input class="input-muestras" type="date" v-model="dateColected" name="dateColected" />
            </div>
            <div>
              <label for="biopsy">Opciones biopsia</label>
              <div>
                <select class="input-muestras" v-model="biopsy" required>
                  <option name="biopsy" value="" selected>Órgano</option>
                  <option name="biopsy" value="Corazón">Corazón</option>
                  <option name="biopsy" value="pulmón">Pulmón</option>
                  <option name="biopsy" value="Albacete">otro</option>
                  <option name="biopsy" value="otro">Otro</option>
                </select>
              </div>
            </div>
            <div>
              <label for="sede">Centro de procedencia</label>
              <div>
                <select class="input-muestras" v-model="sede" required>
                  <option value="" selected>Sede</option>
                  <option value="Albacete">Albacete</option>
                  <option value="Alicante">Alicante</option>
                  <option value="Alicante II">Alicante II</option>
                  <option value="Almeria">Almería</option>
                  <option value="Cordoba">Córdoba</option>
                  <option value="Granada">Granada</option>
                  <option value="Huelva">Huelva</option>
                  <option value="Jerez">Jerez</option>
                  <option value="Madrid">Madrid</option>
                  <option value="Madrid II">Madrid II</option>
                  <option value="Malaga">Málaga</option>
                  <option value="Murcia">Murcia</option>
                  <option value="Sevilla">Sevilla</option>
                  <option value="Valencia">Valencia</option>
                  <option value="Zaragoza">Zaragoza</option>
                </select>
              </div>
            </div>
          </div>
          <div>

            <div>
              <label for="img">Imágenes de la muestra</label>
              <input class="input-muestras" type="file" @change="onFileChange" multiple />
              <img v-if="imgUrl" :src="imgUrl" alt="Vista previa de la imagen" />
              
            </div>
          </div>
        </div>


        <button class="btn-muestras" type="submit">Siguiente</button>
      </form>
    </div>
  </div>
</template>
<script>
import { reactive } from 'vue';
import { useRouter } from 'vue-router';

export default {
  setup() {
    const router = useRouter();

    const state = reactive({
      code: '',
      nature: '',
      dateColected: '',
      conservation: '',
      biopsy: '',
      sede: '',
      imgUrls: []
    });

    const goToNextPart = () => {
      router.push({
        name: 'ViewMuestras2',
        params: {
          code: state.code,
          nature: state.nature,
          dateColected: state.dateColected,
          conservation: state.conservation,
          biopsy: state.biopsy,
          sede: state.sede,
          imgUrls: JSON.stringify(state.imgUrls) 
        }
      });
    };

    return { ...state, goToNextPart };
  }
}
</script>
<style src="@/assets/css/muestras.css"></style>
