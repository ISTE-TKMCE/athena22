var es1 = document.getElementById("esection1"),
  es2 = document.getElementById("esection2"),
  screenwidth = -(window.innerWidth - 17) + "px",
  sw = window.innerWidth + "px",
  sh = window.innerHeight + "px",
  esection1 = () => {
    (es1.style.animation = "animEsection 2s forwards"),
      es2.style.marginLeft != screenwidth &&
        (es2.style.animation = "animEsection2 2s forwards");
  },
  esection2 = () => {
    (es2.style.animation = "animEsection 2s forwards"),
      es1.style.marginLeft != screenwidth &&
        (es1.style.animation = "animEsection2 2s forwards");
  },
  renderer = new THREE.WebGLRenderer({ antialias: !0 }),
  aboutpage = document.getElementById("about");
function onWindowResize() {
  (camera.aspect = window.innerWidth / window.innerHeight),
    camera.updateProjectionMatrix(),
    renderer.setSize(window.innerWidth, window.innerHeight);
}
renderer.setSize(window.innerWidth, window.innerHeight),
  (renderer.shadowMap.enabled = !1),
  (renderer.shadowMap.type = THREE.PCFSoftShadowMap),
  (renderer.shadowMap.needsUpdate = !0),
  document.body.appendChild(renderer.domElement),
  window.addEventListener("resize", onWindowResize, !1);
var camera = new THREE.PerspectiveCamera(
    35,
    window.innerWidth / window.innerHeight,
    1,
    500
  ),
  scene = new THREE.Scene(),
  cameraRange = 3,
  setcolor = 0;
(scene.background = new THREE.Color(setcolor)),
  (scene.fog = new THREE.Fog(setcolor, 2.5, 3.5));
var sceneGruop = new THREE.Object3D(),
  particularGruop = new THREE.Object3D(),
  modularGruop = new THREE.Object3D();
function generateParticle(e, t = 2) {
  for (
    var a = new THREE.MeshPhysicalMaterial({
        color:  2525112,
        side: THREE.DoubleSide,
      }),
      n = new THREE.CircleGeometry(0.2, 5),
      o = 1;
    o < e;
    o++
  ) {
    var i = 0.001 + Math.abs(mathRandom(0.03)),
      r = new THREE.Mesh(n, a);
    r.position.set(mathRandom(t), mathRandom(t), mathRandom(t)),
      r.rotation.set(mathRandom(), mathRandom(), mathRandom()),
      r.scale.set(i, i, i),
      (r.speedValue = mathRandom(1)),
      particularGruop.add(r);
  }
}
function mathRandom(e = 1) {
  return -Math.random() * e + Math.random() * e;
}
function init() {
  for (var e = 0; e < 50; e++) {
    var t = new THREE.IcosahedronGeometry(1),
      a = new THREE.MeshStandardMaterial({
        shading: THREE.FlatShading,
        color:  2525112,
        transparent: !1,
        opacity: 1,
        wireframe: !1,
      }),
      n = new THREE.Mesh(t, a);
    (n.speedRotation = 0.1 * Math.random()),
      (n.positionX = mathRandom()),
      (n.positionY = mathRandom()),
      (n.positionZ = mathRandom()),
      (n.castShadow = !0),
      (n.receiveShadow = !0);
    var o = mathRandom(0.3);
    n.scale.set(o, o, o),
      (n.rotation.x = mathRandom((180 * Math.PI) / 180)),
      (n.rotation.y = mathRandom((180 * Math.PI) / 180)),
      (n.rotation.z = mathRandom((180 * Math.PI) / 180)),
      n.position.set(n.positionX, n.positionY, n.positionZ),
      modularGruop.add(n);
  }
}
generateParticle(200, 2),
  sceneGruop.add(particularGruop),
  scene.add(modularGruop),
  scene.add(sceneGruop),
  camera.position.set(0, 0, cameraRange);
var cameraValue = !1;
function cameraSet() {
  cameraValue
    ? (TweenMax.to(camera.position, 1, {
        z: cameraRange,
        x: 0,
        y: 0,
        ease: Power4.easeInOut,
      }),
      (INTERSECTED = null),
      (cameraValue = !1))
    : (TweenMax.to(camera.position, 1, {
        z: cameraRange,
        ease: Power4.easeInOut,
      }),
      (cameraValue = !0));
}
var ambientLight = new THREE.AmbientLight(  2525112, 0.1),
  light = new THREE.SpotLight( 2525112, 3);
light.position.set(5, 5, 2),
  (light.castShadow = !0),
  (light.shadow.mapSize.width = 1e4),
  (light.shadow.mapSize.height = light.shadow.mapSize.width),
  (light.penumbra = 0.5);
var lightBack = new THREE.PointLight(  2525112, 0.1);
lightBack.position.set(0, -3, -1),
  scene.add(sceneGruop),
  scene.add(light),
  scene.add(lightBack);
var rectSize = 2,
  intensity = 50,
  rectLight = new THREE.RectAreaLight(  2525112, intensity, rectSize, rectSize);
rectLight.position.set(0, 0, 1),
  rectLight.lookAt(0, 0, 0),
  scene.add(rectLight),
  (rectLightHelper = new THREE.RectAreaLightHelper(rectLight));
var INTERSECTED,
  intersected,
  raycaster = new THREE.Raycaster(),
  mouse = new THREE.Vector2();
function onMouseMove(e) {
  e.preventDefault(),
    (mouse.x = (e.clientX / window.innerWidth) * 2 - 1),
    (mouse.y = (-e.clientY / window.innerHeight) * 2 + 1);
}
function onMouseDown(e) {
  e.preventDefault(), onMouseMove(e), raycaster.setFromCamera(mouse, camera);
  var t = raycaster.intersectObjects(modularGruop.children);
  t.length > 0 &&
    ((cameraValue = !1),
    INTERSECTED != t[0].object
      ? (INTERSECTED &&
          INTERSECTED.material.emissive.setHex(INTERSECTED.currentHex),
        ((INTERSECTED = t[0].object).currentHex =
          INTERSECTED.material.emissive.getHex()),
        INTERSECTED.material.emissive.setHex(  2525112))
      : (INTERSECTED &&
          INTERSECTED.material.emissive.setHex(INTERSECTED.currentHex),
        (INTERSECTED = null))),
    console.log(t.length);
}
function onMouseUp(e) {}
aboutpage.addEventListener("mousedown", onMouseDown, !1),
  aboutpage.addEventListener("mouseup", onMouseUp, !1),
  aboutpage.addEventListener("mousemove", onMouseMove, !1);
var uSpeed = 0.1;
function animate() {
  var e = 3e-4 * performance.now();
  requestAnimationFrame(animate);
  for (var t = 0, a = particularGruop.children.length; t < a; t++) {
    var n = particularGruop.children[t];
    (n.rotation.x += n.speedValue / 10),
      (n.rotation.y += n.speedValue / 10),
      (n.rotation.z += n.speedValue / 10);
  }
  for (t = 0, a = modularGruop.children.length; t < a; t++) {
    var o = modularGruop.children[t];
    (o.rotation.x += 0.008),
      (o.rotation.y += 0.005),
      (o.rotation.z += 0.003),
      (o.position.x = Math.sin(e * o.positionZ) * o.positionY),
      (o.position.y = Math.cos(e * o.positionX) * o.positionZ),
      (o.position.z = Math.sin(e * o.positionY) * o.positionX);
  }
  (particularGruop.rotation.y += 0.005),
    (modularGruop.rotation.y -=
      (4 * mouse.x + modularGruop.rotation.y) * uSpeed),
    (modularGruop.rotation.x -=
      (4 * -mouse.y + modularGruop.rotation.x) * uSpeed),
    camera.lookAt(scene.position),
    renderer.render(scene, camera);
}
animate(), init();
var canvass = document.getElementsByTagName("canvas")[0];
window.innerwidth < "400px" && alert("everything ok");
