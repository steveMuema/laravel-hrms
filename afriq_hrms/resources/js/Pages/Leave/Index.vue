<script setup>
import Authenticated from "../../Layouts/Authenticated.vue";
import Table from "../../Components/Table.vue";
import Button from "@/Components/Button.vue";

defineProps({
    leaves: {
        type: [],
    },
    fields: {
        type: ["Name", "Date From ", "Date To", "Status"],
    },
});
</script>
<template>
    <Authenticated>
        <template #header>
            <div
                class="flex flex-col gap-4 md:flex-row md:items-center md:justify-between"
            >
                <h2 class="text-xl font-semibold leading-tight">
                    <div class="flex-1 px-4 sm:px-6">Applied Leaves</div>
                </h2>
            </div>
        </template>
        <div class="">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">
                <div class="p-4 sm:p-8 bg-white shadow sm:rounded-lg">
                    <Button
                        class="items-center gap-2 max-w-xs float-btn-right"
                        :href="route('apply.leave')"
                    >
                        <GithubIcon
                            aria-hidden="true"
                            :class="iconSizeClasses"
                        />
                        <span>Apply Leave</span>
                    </Button>
                    <div class="table-responsive my-5">
                        <Table
                            :fields="[
                                'Name',
                                'Date From',
                                'Date To',
                                'Subject',
                                'Status',
                            ]"
                            :leaves="leaves"
                        ></Table>
                    </div>
                </div>
            </div>
        </div>
    </Authenticated>
</template>
