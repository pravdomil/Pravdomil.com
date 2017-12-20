import * as React from "react";
import { StatelessComponent } from "react";

const Spacer: StatelessComponent<{ height?: number }> = function({ children, height = 1 }) {
    const style = {
        height: height * 8,
    };
    
    return (
        <div style={style}>
            {children}
        </div>
    );
};

export default Spacer;
