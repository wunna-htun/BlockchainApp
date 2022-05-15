
const main = async()=> {

  const Transcations = await hre.ethers.getContractFactory("Transcations");
  const transcations = await Transcations.deploy();

  await transcations.deployed();

  console.log("transcations deployed to:", transcations.address);
}


const runMain=async ()=>{
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.error(error);
    process.exit(1)
  }
}


runMain(); 