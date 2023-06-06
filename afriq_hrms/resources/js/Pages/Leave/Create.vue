<script setup>
import Authenticated from "../../Layouts/Authenticated.vue";
import InputError from "@/Components/InputError.vue";
import Input from "@/Components/Input.vue";
import Label from "@/Components/Label.vue";
import Button from "@/Components/Button.vue";
import { useForm } from "@inertiajs/vue3";
import Datepicker from "vue3-datepicker";
import { ref } from "vue";

const form = useForm({
    leaveType: "",
    dateTo: ref(new Date()),
    dateFrom: ref(new Date()),
    pointOfContact: "",
    reason: "",
});
defineProps({
    leaveTypes: {
        type: [],
    },
    staff: {
        type: [],
    },
});

// function submit() {
//     router.post("/users", form);
// }
</script>

<template>
    <Authenticated>
        <template #header>
            <div
                class="flex flex-col gap-4 md:flex-row md:items-center md:justify-between"
            >
                <h2 class="text-xl font-semibold leading-tight">Apply Leave</h2>
            </div>
        </template>
        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">
                <div class="p-4 sm:p-8 bg-white shadow sm:rounded-lg">
                    <section>
                        <form
                            @submit.prevent="form.post(route('store.leave'))"
                            class="mt-6 space-y-6"
                        >
                            <div>
                                <Label for="leave-type" value="Leave Type" />

                                <select
                                    v-model="form.leaveType"
                                    required
                                    class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm mt-1 block w-full"
                                >
                                    <option
                                        v-for="leave in leaveTypes"
                                        v-bind:value="leave.id"
                                    >
                                        {{ leave.name }} -
                                        {{ leave.remaining_days }} Remaining
                                        Days
                                    </option>
                                </select>

                                <InputError
                                    class="mt-2"
                                    required
                                    :message="form.errors.leave_type"
                                />
                            </div>
                            <div>
                                <Label for="date-from" value="Date From:" />
                                <Datepicker
                                    v-model="form.dateFrom"
                                    class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm mt-1 block w-full"
                                />
                                <InputError
                                    class="mt-2"
                                    :message="form.errors.dateFrom"
                                />
                            </div>

                            <div>
                                <Label for="date-to" value="Date To:" />
                                <Datepicker
                                    v-model="form.dateTo"
                                    class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm mt-1 block w-full"
                                />
                                <InputError
                                    class="mt-2"
                                    :message="form.errors.dateTo"
                                />
                            </div>

                            <div>
                                <Label for="reason" value="Reason" />

                                <Input
                                    id="reason"
                                    type="text"
                                    class="mt-1 block w-full"
                                    v-model="form.reason"
                                    required
                                    autofocus
                                />

                                <InputError
                                    class="mt-2"
                                    :message="form.errors.reason"
                                />
                            </div>

                            <div>
                                <Label
                                    for="point-of-contact"
                                    value="Point of Contact"
                                />

                                <select
                                    v-model="form.pointOfContact"
                                    required
                                    class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm mt-1 block w-full"
                                >
                                    <option
                                        v-for="employee in staff"
                                        v-bind:value="employee.id"
                                    >
                                        {{ employee.full_name }}
                                    </option>
                                </select>

                                <InputError
                                    class="mt-2"
                                    required
                                    :message="form.errors.point_of_contact"
                                />
                            </div>

                            <div class="flex items-center gap-4">
                                <Button :disabled="form.processing"
                                    >Save</Button
                                >

                                <Transition
                                    enter-from-class="opacity-0"
                                    leave-to-class="opacity-0"
                                    class="transition ease-in-out"
                                >
                                    <p
                                        v-if="form.recentlySuccessful"
                                        class="text-sm text-gray-600"
                                    >
                                        Saved.
                                    </p>
                                </Transition>
                            </div>
                        </form>
                    </section>
                </div>
            </div>
        </div>
    </Authenticated>
</template>
