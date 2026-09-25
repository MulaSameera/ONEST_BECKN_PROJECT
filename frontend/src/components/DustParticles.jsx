import React, { useEffect, useRef } from 'react';

/**
 * Rich Atmospheric Dust & Crystal Particle Field (~40% visual coverage)
 * Section 12 Specification:
 * - Pure White: #FFFFFF
 * - Dusty White: #F1ECEF
 * - Soft White: #D8D0D5
 * - Opacity: 0.08 - 0.45
 * - High density crystalline distribution across the layout
 */
export const DustParticles = () => {
  const canvasRef = useRef(null);

  useEffect(() => {
    const canvas = canvasRef.current;
    if (!canvas) return;
    const ctx = canvas.getContext('2d');
    if (!ctx) return;

    let animationFrameId;
    let width = (canvas.width = window.innerWidth);
    let height = (canvas.height = window.innerHeight);

    const handleResize = () => {
      width = canvas.width = window.innerWidth;
      height = canvas.height = window.innerHeight;
    };
    window.addEventListener('resize', handleResize);

    // Color Palette
    const colors = [
      { r: 255, g: 255, b: 255 }, // Pure White #FFFFFF
      { r: 241, g: 236, b: 239 }, // Dusty White #F1ECEF
      { r: 216, g: 208, b: 213 }, // Soft White #D8D0D5
    ];

    // High Density: 550 - 750 particles for ~40% visual presence
    const particleCount = Math.min(750, Math.max(380, Math.floor((width * height) / 1800)));

    const particles = Array.from({ length: particleCount }, (_, index) => {
      const typeRand = Math.random();
      const isLargeCrystal = typeRand < 0.08; // 8% Large sparkling crystals with flares
      const isMediumCrystal = typeRand >= 0.08 && typeRand < 0.32; // 24% 4-point diamond crystals
      // Remaining 68% are ambient micro dust specks

      let radius = Math.random() * 0.8 + 0.5;
      if (isLargeCrystal) {
        radius = Math.random() * 1.6 + 2.2;
      } else if (isMediumCrystal) {
        radius = Math.random() * 0.9 + 1.2;
      }

      return {
        x: Math.random() * width,
        y: Math.random() * height,
        radius,
        color: colors[Math.floor(Math.random() * colors.length)],
        baseAlpha: isLargeCrystal ? Math.random() * 0.25 + 0.18 : Math.random() * 0.25 + 0.08,
        maxAlpha: isLargeCrystal ? 0.45 : isMediumCrystal ? 0.38 : 0.30,
        pulseSpeed: Math.random() * 0.03 + 0.008,
        pulseOffset: Math.random() * Math.PI * 2,
        isLargeCrystal,
        isMediumCrystal,
        rotation: Math.random() * Math.PI * 2,
        rotSpeed: (Math.random() - 0.5) * 0.025,
        vx: (Math.random() - 0.5) * (isLargeCrystal ? 0.45 : 0.25),
        vy: -(Math.random() * 0.45 + (isLargeCrystal ? 0.20 : 0.10)),
      };
    });

    let tick = 0;
    const render = () => {
      ctx.clearRect(0, 0, width, height);
      tick++;

      for (let i = 0; i < particles.length; i++) {
        const p = particles[i];
        p.x += p.vx;
        p.y += p.vy;
        p.rotation += p.rotSpeed;

        // Wrap boundaries
        if (p.y < -20) {
          p.y = height + 20;
          p.x = Math.random() * width;
        }
        if (p.x < -20) p.x = width + 20;
        if (p.x > width + 20) p.x = -20;

        // Breathing shimmer opacity
        const alpha = Math.max(
          0.08,
          Math.min(p.maxAlpha, p.baseAlpha + Math.sin(tick * p.pulseSpeed + p.pulseOffset) * 0.14)
        );

        ctx.save();
        ctx.translate(p.x, p.y);
        ctx.rotate(p.rotation);

        if (p.isLargeCrystal) {
          // Large faceted diamond crystal
          ctx.beginPath();
          ctx.moveTo(0, -p.radius * 1.5);
          ctx.lineTo(p.radius * 1.1, 0);
          ctx.lineTo(0, p.radius * 1.5);
          ctx.lineTo(-p.radius * 1.1, 0);
          ctx.closePath();
          ctx.fillStyle = `rgba(${p.color.r}, ${p.color.g}, ${p.color.b}, ${alpha})`;
          ctx.fill();

          // Glinting cross flare rays
          ctx.strokeStyle = `rgba(${p.color.r}, ${p.color.g}, ${p.color.b}, ${alpha * 0.5})`;
          ctx.lineWidth = 0.6;
          ctx.beginPath();
          ctx.moveTo(-p.radius * 2.5, 0);
          ctx.lineTo(p.radius * 2.5, 0);
          ctx.moveTo(0, -p.radius * 2.5);
          ctx.lineTo(0, p.radius * 2.5);
          ctx.stroke();
        } else if (p.isMediumCrystal) {
          // 4-point crystal fragment
          ctx.beginPath();
          ctx.moveTo(0, -p.radius * 1.2);
          ctx.lineTo(p.radius * 0.8, 0);
          ctx.lineTo(0, p.radius * 1.2);
          ctx.lineTo(-p.radius * 0.8, 0);
          ctx.closePath();
          ctx.fillStyle = `rgba(${p.color.r}, ${p.color.g}, ${p.color.b}, ${alpha})`;
          ctx.fill();
        } else {
          // Smooth micro atmospheric dust speck
          ctx.beginPath();
          ctx.arc(0, 0, p.radius, 0, Math.PI * 2);
          ctx.fillStyle = `rgba(${p.color.r}, ${p.color.g}, ${p.color.b}, ${alpha})`;
          ctx.fill();
        }

        ctx.restore();
      }

      animationFrameId = requestAnimationFrame(render);
    };

    render();

    return () => {
      window.removeEventListener('resize', handleResize);
      cancelAnimationFrame(animationFrameId);
    };
  }, []);

  return (
    <canvas
      ref={canvasRef}
      style={{
        position: 'fixed',
        top: 0,
        left: 0,
        width: '100vw',
        height: '100vh',
        pointerEvents: 'none',
        zIndex: 0,
      }}
    />
  );
};
