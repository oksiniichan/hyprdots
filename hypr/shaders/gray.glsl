precision mediump float;

varying vec2 v_texcoord;
uniform sampler2D tex;
// Uncomment below if adding dither texture
// uniform sampler2D noise; // grayscale noise texture for dithering

void main() {
  vec4 color = texture2D(tex, v_texcoord);

  // --- Step 1: Perceptual grayscale
  float luminance = dot(color.rgb, vec3(0.299, 0.587, 0.114));

  // --- Step 2: Soft gamma to mimic e-ink's contrast
  luminance = pow(luminance, 0.85); // adjust for softer contrast

  // --- Step 3: Apply warm tint
  vec3 paperTone = vec3(1.0, 0.96, 0.88); // warm paper (slightly cream)
  vec3 finalColor = luminance * paperTone;

  // --- Step 4: Clamp highlights to prevent pure white glow
  finalColor = clamp(finalColor, 0.05, 0.95);

  // --- Optional Step 5: Add dithering (simulate ink noise)
  // float dither = texture2D(noise, v_texcoord * 512.0).r;
  // finalColor += (dither - 0.5) * 0.03; // fine ink grain feel
  // finalColor = clamp(finalColor, 0.0, 1.0);

  gl_FragColor = vec4(finalColor, 1.0);
}



