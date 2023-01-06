import globe from './categories/001-globe.png'
import bear from './categories/011-bear.png'
import astronaut from './categories/013-astronaut.png'
import robot from './categories/017-robot.png'
import cowgirl from './western_collection/001-cowgirl.png'
import horse from './western_collection/002-horse.png'
import cactus from './western_collection/003-cactus.png'
import poncho from './western_collection/004-poncho.png'
import sheriff from './western_collection/005-sheriff.png'
import boot from './western_collection/006-boot.png'
import eagle from './western_collection/007-eagle.png'
import kerchief from './western_collection/008-kerchief.png'
import whiskey from './western_collection/027-whiskey.png';
import gallows from './western_collection/029-gallows.png';
import wagon from './western_collection/026-wagon.png';
import coffin from './western_collection/025-coffin.png';
import bonfire from './western_collection/021-bonfire.png';
import cowboy from './western_collection/020-cowboy.png';
import skull_1 from './western_collection/019-skull-1.png';
import saloon from './western_collection/009-saloon.png';
import skull from './western_collection/010-skull.png';
import native_american from './western_collection/011-native-american.png';
import tent from './western_collection/012-tent.png';
import native_american_1 from './western_collection/013-native-american-1.png';
import cowboy_hat from './western_collection/015-cowboy-hat.png';
import water_tower from './western_collection/017-water-tower.png';

//I am using this function to return an array of images with corresponding indices that I can reference for icons and assets throughout the project. 
const ImageCollection = {
    astronaut: astronaut,
    globe: globe,
    bear: bear,
    robot: robot ,
    cowgirl: cowgirl,
    horse: horse,
    cactus: cactus,
    poncho: poncho,
    sheriff: sheriff,
    boot: boot,
    eagle: eagle,
    kerchief: kerchief,
    whiskey: whiskey,
    gallows: gallows,
    wagon: wagon,
    coffin: coffin,
    bonfire: bonfire,
    cowboy: cowboy,
    skull_1: skull_1,
    saloon: saloon,
    skull: skull,
    native_american: native_american,
    tent: tent,
    native_american_1: native_american_1,
    cowboy_hat: cowboy_hat,
    water_tower: water_tower,
    viking: "https://img.freepik.com/free-vector/viking-character-ancient-scandinavian-warrior-with-sword-wooden-shield-with-snake-emblem-vector-cartoon-illustration-medieval-barbarian-horned-helmet-isolated-background_107791-9242.jpg?w=900&t=st=1671749509~exp=1671750109~hmac=a7aea410c42302f21d6a2f64fd8576a81000bbb35a67d92d9e5686f1f8b034dc",
    robot: "https://img.freepik.com/free-vector/vintage-robot-toy-white-background_1308-77501.jpg?w=2000",
    investigator: "https://img.freepik.com/free-photo/cozy-portrait-young-woman-knitted-blue-sweater-pink-hat-with-bright-makeup-holding-magnifying-glass-fooling-around-having-fun_343596-7383.jpg?w=1060&t=st=1671749585~exp=1671750185~hmac=cfbff7056a03c5e98e6a34297a4be9a734bff756d191eb8a67b58865f1dfef30",
    unicorn: "https://img.freepik.com/free-vector/hand-drawn-unicorn-background_52683-9808.jpg?w=740&t=st=1671749433~exp=1671750033~hmac=4187ef816077d3f3bf7631d6bb5a26693baa937c6204cb2077c006a3344edf85"
}
 
let collection = []

const template = (name, number) => {
    console.log(`import ${name} from './western_collection/0${number}-${name}.png'`)
    collection.push(`import ${name} from './western_collection/0${number}-${name}.png'`)
}
export default ImageCollection