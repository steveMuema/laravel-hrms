<script setup>
import PerfectScrollbar from "@/Components/PerfectScrollbar.vue";
import SidebarLink from "@/Components/Sidebar/SidebarLink.vue";
import { DashboardIcon } from "@/Components/Icons/outline";
import SidebarCollapsible from "@/Components/Sidebar/SidebarCollapsible.vue";
import SidebarCollapsibleItem from "@/Components/Sidebar/SidebarCollapsibleItem.vue";
import { TemplateIcon } from "@heroicons/vue/outline";
</script>

<template>
    <PerfectScrollbar
        tagname="nav"
        aria-label="main"
        class="relative flex flex-col flex-1 max-h-full gap-4 px-3"
    >
        <SidebarLink
            title="Dashboard"
            :href="route('dashboard')"
            :active="route().current('dashboard')"
        >
            <template #icon>
                <DashboardIcon
                    class="flex-shrink-0 w-6 h-6"
                    aria-hidden="true"
                />
            </template>
        </SidebarLink>

        <SidebarLink
            title="Profile"
            :href="route('profile.edit')"
            :active="$page.url.startsWith('/profile')"
        >
            <template #icon>
                <DashboardIcon
                    class="flex-shrink-0 w-6 h-6"
                    aria-hidden="true"
                />
            </template>
        </SidebarLink>

        <SidebarCollapsible
            title="Leave"
            :active="$page.url.startsWith('/leave')"
        >
            <SidebarCollapsibleItem
                :href="route('leave.list')"
                title="List"
                :active="$page.url === '/leave/list'"
            />
            <SidebarCollapsibleItem
                :href="route('apply.leave')"
                title="Apply"
                :active="$page.url === '/leave'"
            />
        </SidebarCollapsible>
    </PerfectScrollbar>
</template>
