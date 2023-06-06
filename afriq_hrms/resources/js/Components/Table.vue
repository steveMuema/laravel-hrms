<script setup>
import Button from "@/Components/Button.vue";
defineProps({
    leaves: [],
    fields: [],
});
</script>
<template>
    <div>
        <table id="tableComponent" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th
                        v-for="field in fields"
                        :key="field"
                        @click="sortTable(field)"
                    >
                        {{ field }}
                        <i
                            class="bi bi-sort-alpha-down"
                            aria-label="Sort Icon"
                        ></i>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="leave in leaves" :key="leave">
                    <td v-for="col in leave">
                        <span v-if="col === 'approved'" class="leave-table-td">
                            <Button
                                class="leave-table-td"
                                variant="success"
                                size="sm"
                                >{{ col }}</Button
                            >
                        </span>
                        <span
                            v-else-if="col === 'pending'"
                            class="leave-table-td"
                        >
                            <Button
                                class="leave-table-td"
                                variant="info"
                                size="sm"
                                >{{ col }}</Button
                            >
                        </span>
                        <span
                            v-else-if="col === 'declined'"
                            class="leave-table-td"
                        >
                            <Button
                                class="leave-table-td"
                                variant="danger"
                                size="sm"
                                >{{ col }}</Button
                            >
                        </span>
                        <span v-else>{{ col }}</span>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>
