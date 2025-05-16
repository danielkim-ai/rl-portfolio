'use client';

import { useEffect, useState } from 'react';

export default function ThemeToggle() {
  const [isDark, setIsDark] = useState(false);

  useEffect(() => {
    const classList = document.documentElement.classList;
    const savedTheme = localStorage.getItem('theme');
    if (savedTheme === 'dark' || (!savedTheme && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
      classList.add('dark');
      setIsDark(true);
    } else {
      classList.remove('dark');
    }
  }, []);

  const toggleTheme = () => {
    const classList = document.documentElement.classList;
    if (classList.contains('dark')) {
      classList.remove('dark');
      localStorage.setItem('theme', 'light');
      setIsDark(false);
    } else {
      classList.add('dark');
      localStorage.setItem('theme', 'dark');
      setIsDark(true);
    }
  };

  return (
    <button
      onClick={toggleTheme}
      className="px-4 py-2 rounded bg-gray-200 dark:bg-gray-700 text-sm dark:text-white"
    >
      {isDark ? '☀️ Light Mode' : '🌙 Dark Mode'}
    </button>
  );
}
