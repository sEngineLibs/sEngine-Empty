let project = new Project("Untitled");

project.addSources("src");
project.addAssets("assets/**", {
    nameBaseDir: "assets",
    destination: "assets/{dir}/{name}",
    name: "{dir}/{name}",
});
await project.addProject("sEngine");

resolve(project);
