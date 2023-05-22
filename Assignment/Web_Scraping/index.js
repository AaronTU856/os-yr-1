import puppeteer from "puppeteer-core";

async function run()
{
    let browser;
    try{

        // 'brd-customer-hl_83fdf9b9-zone-scraping_browser'
        const auth = 'USERNAME:PASSWORD';

        browser = await puppeteer.connect({

            browserWSEndpoint: 'wss://${auth}@zproxy.lum-superproxy.io:9222'

        });

        const page = await browser.newPage();
        page.setDefaultNavigationTimeout(2 * 60 * 1000);

        await page.goto('https://amazon.com');

        const body = await page.$('body')

        const html = await page.evaluate(() =>
            document.documentElement.outerHTML
        );

        console.log(html)



        return;
            
    } catch (e){ 
        console.error('scrape failed', e);   
    }
    finally{
        await browser?.close();    
    }

}

run()
