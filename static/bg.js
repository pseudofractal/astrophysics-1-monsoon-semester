(() => {
  const mqWide = window.matchMedia("(min-width: 900px)");
  const mqReduce = window.matchMedia("(prefers-reduced-motion: reduce)");

  const canvas = document.getElementById("bg");
  if (!canvas) return;

  const shouldRun = () => mqWide.matches && !mqReduce.matches;
  let ctx,
    W,
    H,
    balls = [],
    rafId = null;

  const LAVENDER = "#b4befe";
  const BASE = "#1e1e2e";

  function resize() {
    if (!shouldRun()) {
      cancel();
      canvas.width = 0;
      canvas.height = 0;
      return;
    }
    W = canvas.width = window.innerWidth * devicePixelRatio;
    H = canvas.height = window.innerHeight * devicePixelRatio;
    ctx = canvas.getContext("2d");
    ctx.scale(devicePixelRatio, devicePixelRatio);
    const targetCount = Math.floor(
      Math.min(80, (window.innerWidth * window.innerHeight) / 18000),
    );
    balls = Array.from({ length: targetCount }, () => makeBall());
    start();
  }

  function makeBall() {
    const r = rand(6, 22);
    return {
      x: rand(-50, window.innerWidth + 50),
      y: rand(-window.innerHeight, window.innerHeight),
      r,
      vy: rand(10, 40) / 60,
      vx: rand(-6, 6) / 60,
      alpha: rand(0.15, 0.35),
    };
  }

  function rand(a, b) {
    return a + Math.random() * (b - a);
  }

  function step() {
    if (!ctx) return;
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    ctx.fillStyle = BASE;
    ctx.globalAlpha = 1;
    ctx.fillRect(0, 0, window.innerWidth, window.innerHeight);

    for (let i = 0; i < balls.length; i++) {
      const b = balls[i];
      b.y += b.vy;
      b.x += b.vx;
      if (b.y - b.r > window.innerHeight + 40) {
        balls[i] = makeBall();
        balls[i].y = -rand(20, window.innerHeight * 0.25);
        continue;
      }
      const gradient = ctx.createRadialGradient(
        b.x,
        b.y,
        0,
        b.x,
        b.y,
        b.r * 1.6,
      );
      gradient.addColorStop(0, hexWithAlpha(LAVENDER, b.alpha));
      gradient.addColorStop(1, hexWithAlpha(LAVENDER, 0));
      ctx.fillStyle = gradient;
      ctx.beginPath();
      ctx.arc(b.x, b.y, b.r * 1.6, 0, Math.PI * 2);
      ctx.fill();

      ctx.fillStyle = hexWithAlpha(LAVENDER, Math.min(0.8, b.alpha + 0.1));
      ctx.beginPath();
      ctx.arc(b.x, b.y, b.r, 0, Math.PI * 2);
      ctx.fill();
    }
    rafId = requestAnimationFrame(step);
  }

  function hexWithAlpha(hex, alpha) {
    const r = parseInt(hex.slice(1, 3), 16);
    const g = parseInt(hex.slice(3, 5), 16);
    const b = parseInt(hex.slice(5, 7), 16);
    return `rgba(${r},${g},${b},${alpha})`;
  }

  function start() {
    cancel();
    rafId = requestAnimationFrame(step);
  }
  function cancel() {
    if (rafId) cancelAnimationFrame(rafId);
    rafId = null;
  }

  resize();
  window.addEventListener("resize", resize);
  mqWide.addEventListener?.("change", resize);
  mqReduce.addEventListener?.("change", resize);
})();
