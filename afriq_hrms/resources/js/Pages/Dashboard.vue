<script setup>
import AuthenticatedLayout from "@/Layouts/Authenticated.vue";
import Button from "@/Components/Button.vue";
defineProps({ leavetypes: [] });
</script>

<template>
    <AuthenticatedLayout title="Dashboard">
        <template #header>
            <div
                class="flex flex-col gap-4 md:flex-row md:items-center md:justify-between"
            >
                <h2 class="text-xl font-semibold leading-tight">Dashboard</h2>
            </div>
        </template>
        <div v-if="leavetypes.length === 0">
            <Button variant="danger" size="lg"
                ><h3 class="text-xl font-semibold leading-tight">
                    You do not qualify to apply for any leave.
                </h3></Button
            >
        </div>
        <div
            v-else
            class="grid grid-cols-1 gap-8 p-4 lg:grid-cols-2 xl:grid-cols-3"
        >
            <div
                v-for="leave in leavetypes"
                class="flex items-center justify-between p-4 bg-white rounded-md dark:bg-darker"
            >
                <div>
                    <h6
                        class="text-xs font-medium leading-none tracking-wider text-gray-500 uppercase dark:text-primary-light"
                    >
                        Leave Type: {{ leave.name }}
                    </h6>
                    <span
                        class="custom-btn inline-block px-2 py-px ml-2 text-xs text-green-500 bg-green-100 rounded-md"
                    >
                        Remaining Days: {{ leave.remaining_days }}
                    </span>
                </div>
            </div>
        </div>
        <!-- <div
            class="p-6 overflow-hidden bg-white rounded-md shadow-md dark:bg-dark-eval-1"
        ></div> -->
    </AuthenticatedLayout>
</template>
<style>
.custom-btn {
    padding: 10px !important;
    font-weight: 700 !important;
    margin: 5px 0px !important;
}
</style>
