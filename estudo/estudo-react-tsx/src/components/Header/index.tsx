import React from "react";
import LayoutBase from "../../layout/Test/LayoutTest";

const Header = () =>{
    type HeaderLayout = {
        bgColor?: string;
        height?: string;
        width: "full";
    }
    return(
        <HeaderLayout
        bgColor="black"
        height="h-[64px]"
        ></HeaderLayout>
    )
};

export default Header;