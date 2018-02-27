import * as React from "react";

export default function Spacer({ children, height = 1 }) {
    const style = {
        height: height * 8,
    };
    
    return (
        <div style={style}>
            {children}
        </div>
    );
};

