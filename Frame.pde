class Frame {

  int sides = 20; // how many sides the cylinders have 

  // joint centers      
  PVector joint0_0;
  PVector joint1_1;    
  PVector joint2_2;
  PVector joint3_3;
  PVector joint4_6;
  PVector joint5_8;
  PVector joint6_10;
  PVector joint7_11;
  PVector joint8_9;
  PVector joint9_7;
  PVector joint10_12;
  PVector joint11_13;
  PVector joint12_14;
  PVector joint13_17;
  PVector joint14_19;
  PVector joint15_21;
  PVector joint16_22;
  PVector joint17_20;
  PVector joint18_18;
  PVector joint19_25;
  PVector joint20_26;
  PVector joint21_27;
  PVector joint22_28;
  PVector joint23_29;
  PVector joint24_30;
  PVector joint25_31;
  PVector joint26_32;
  PVector joint27_33;
  PVector joint28_34;
  PVector joint29_35;
  PVector joint30_36;
  PVector joint31_37;
  PVector joint32_38;
  PVector joint33_39;
  PVector joint34_40;
  PVector joint35_44;
  PVector joint36_45;

  // links between joint centers
  Segment link0_1;
  Segment link1_2;
  Segment link2_3;
  Segment link3_4;
  Segment link4_5;
  Segment link5_6;
  Segment link6_7;
  Segment link7_8;
  Segment link8_9;
  Segment link9_3;
  Segment link0_10;// left leg
  Segment link10_11;
  Segment link11_12;
  Segment link12_13;
  Segment link13_14;
  Segment link14_15;
  Segment link15_16;
  Segment link16_17;
  Segment link17_18;
  Segment link18_12;
  Segment link0_19;  // spine
  Segment link19_20;
  Segment link20_21;
  Segment link21_22;
  Segment link22_23; // right arm
  Segment link23_24;
  Segment link24_25;
  Segment link25_26;
  Segment link26_27;
  Segment link22_28; // left arm
  Segment link28_29;
  Segment link29_30;
  Segment link30_31;
  Segment link31_32;
  Segment link22_33; // head
  Segment link33_34;
  Segment link34_35;
  Segment link35_36;
  Segment link36_34;

  Frame(float dataRow[]) {
    // named as order#_actual# in csv file.  assign triplets to specific joints.
    joint0_0 = new PVector(dataRow[2], dataRow[3], dataRow[4]);
    joint1_1 = new PVector(dataRow[5], dataRow[6], dataRow[7]);    
    joint2_2 = new PVector(dataRow[8], dataRow[9], dataRow[10]);
    joint3_3 = new PVector(dataRow[11], dataRow[12], dataRow[13]);
    joint4_6 = new PVector(dataRow[14], dataRow[15], dataRow[16]);
    joint5_8 = new PVector(dataRow[17], dataRow[18], dataRow[19]);
    joint6_10 = new PVector(dataRow[20], dataRow[21], dataRow[22]);
    joint7_11 = new PVector(dataRow[23], dataRow[24], dataRow[25]);
    joint8_9 = new PVector(dataRow[26], dataRow[27], dataRow[28]);
    joint9_7 = new PVector(dataRow[29], dataRow[30], dataRow[31]);
    joint10_12 = new PVector(dataRow[32], dataRow[33], dataRow[34]);
    joint11_13 = new PVector(dataRow[35], dataRow[36], dataRow[37]);
    joint12_14 = new PVector(dataRow[38], dataRow[39], dataRow[40]);
    joint13_17 = new PVector(dataRow[41], dataRow[42], dataRow[43]);
    joint14_19 = new PVector(dataRow[44], dataRow[45], dataRow[46]);
    joint15_21 = new PVector(dataRow[47], dataRow[48], dataRow[49]);
    joint16_22 = new PVector(dataRow[50], dataRow[51], dataRow[52]);
    joint17_20 = new PVector(dataRow[53], dataRow[54], dataRow[55]);
    joint18_18 = new PVector(dataRow[56], dataRow[57], dataRow[58]);
    joint19_25 = new PVector(dataRow[59], dataRow[60], dataRow[61]);
    joint20_26 = new PVector(dataRow[62], dataRow[63], dataRow[64]);
    joint21_27 = new PVector(dataRow[65], dataRow[66], dataRow[67]);
    joint22_28 = new PVector(dataRow[68], dataRow[69], dataRow[70]);
    joint23_29 = new PVector(dataRow[71], dataRow[72], dataRow[73]);
    joint24_30 = new PVector(dataRow[74], dataRow[75], dataRow[76]);
    joint25_31 = new PVector(dataRow[77], dataRow[78], dataRow[79]);
    joint26_32 = new PVector(dataRow[80], dataRow[81], dataRow[82]);
    joint27_33 = new PVector(dataRow[83], dataRow[84], dataRow[85]);
    joint28_34 = new PVector(dataRow[86], dataRow[87], dataRow[88]);
    joint29_35 = new PVector(dataRow[89], dataRow[90], dataRow[91]);
    joint30_36 = new PVector(dataRow[92], dataRow[93], dataRow[94]);
    joint31_37 = new PVector(dataRow[95], dataRow[96], dataRow[97]);
    joint32_38 = new PVector(dataRow[98], dataRow[99], dataRow[100]);
    joint33_39 = new PVector(dataRow[101], dataRow[102], dataRow[103]);
    joint34_40 = new PVector(dataRow[104], dataRow[105], dataRow[106]);
    joint35_44 = new PVector(dataRow[107], dataRow[108], dataRow[109]);
    joint36_45 = new PVector(dataRow[110], dataRow[111], dataRow[112]);

    // named for order 
    link0_1 = new Segment(joint0_0, joint1_1, 2, 2, sides);  // right leg
    link1_2 = new Segment(joint1_1, joint2_2, 10, 7, sides);
    link2_3 = new Segment(joint2_2, joint3_3, 7, 6, sides);
    link3_4 = new Segment(joint3_3, joint4_6, 2, 2, sides);
    link4_5 = new Segment(joint4_6, joint5_8, 2, 2, sides);
    link5_6 = new Segment(joint5_8, joint6_10, 2, 2, sides);
    link6_7 = new Segment(joint6_10, joint7_11, 2, 2, sides);
    link7_8 = new Segment(joint7_11, joint8_9, 2, 2, sides);
    link8_9 = new Segment(joint8_9, joint9_7, 2, 2, sides);
    link9_3 = new Segment(joint9_7, joint3_3, 2, 2, sides);
    link0_10 = new Segment(joint0_0, joint10_12, 2, 2, sides);// left leg
    link10_11 = new Segment(joint10_12, joint11_13, 10, 7, sides);
    link11_12 = new Segment(joint11_13, joint12_14, 7, 6, sides);
    link12_13 = new Segment(joint12_14, joint13_17, 2, 2, sides);
    link13_14 = new Segment(joint13_17, joint14_19, 2, 2, sides);
    link14_15 = new Segment(joint14_19, joint15_21, 2, 2, sides);
    link15_16 = new Segment(joint15_21, joint16_22, 2, 2, sides);
    link16_17 = new Segment(joint16_22, joint17_20, 2, 2, sides);
    link17_18 = new Segment(joint17_20, joint18_18, 2, 2, sides);
    link18_12 = new Segment(joint18_18, joint12_14, 2, 2, sides);
    link0_19 = new Segment(joint0_0, joint19_25, 2, 2, sides);  // spine
    link19_20 = new Segment(joint19_25, joint20_26, 2, 2, sides);
    link20_21 = new Segment(joint20_26, joint21_27, 2, 2, sides);
    link21_22 = new Segment(joint21_27, joint22_28, 2, 2, sides);
    link22_23 = new Segment(joint22_28, joint23_29, 2, 2, sides); // right arm
    link23_24 = new Segment(joint23_29, joint24_30, 2, 2, sides);
    link24_25 = new Segment(joint24_30, joint25_31, 7, 5, sides);
    link25_26 = new Segment(joint25_31, joint26_32, 5, 4, sides);
    link26_27 = new Segment(joint26_32, joint27_33, 2, 2, sides);
    link22_28 = new Segment(joint22_28, joint28_34, 2, 2, sides); // left arm
    link28_29 = new Segment(joint28_34, joint29_35, 2, 2, sides);
    link29_30 = new Segment(joint29_35, joint30_36, 7, 5, sides);
    link30_31 = new Segment(joint30_36, joint31_37, 5, 4, sides);
    link31_32 = new Segment(joint31_37, joint32_38, 2, 2, sides);
    link22_33 = new Segment(joint22_28, joint33_39, 2, 2, sides); // head
    link33_34 = new Segment(joint33_39, joint34_40, 2, 2, sides);
    link34_35 = new Segment(joint34_40, joint35_44, 2, 2, sides);
    link35_36 = new Segment(joint35_44, joint36_45, 2, 2, sides);
    link36_34 = new Segment(joint36_45, joint34_40, 2, 2, sides);
  }

  // create spheres at each major joint
  void drawJoint(PVector joint, int radius) {
    fill(#D01DDE);  // set color for joint centers and segments
    noStroke();
    pushMatrix();
    translate(joint.x, joint.y, joint.z);
    sphere(radius);
    popMatrix();
  }

  void drawLine(PVector joint1, PVector joint2) {
    strokeWeight(2);
    stroke(0);
    line(joint1.x, joint1.y, joint1.z, joint2.x, joint2.y, joint2.z);
  }

  void displayJoints() {
    int radius = 2; // default radius for all joints
    drawJoint(joint0_0, radius);
    drawJoint(joint1_1, radius);
    drawJoint(joint2_2, 7);
    drawJoint(joint3_3, radius);
    drawJoint(joint4_6, radius);
    drawJoint(joint5_8, radius);
    drawJoint(joint6_10, radius);
    drawJoint(joint7_11, radius);
    drawJoint(joint8_9, radius);
    drawJoint(joint9_7, radius);
    drawJoint(joint10_12, radius);
    drawJoint(joint11_13, 7);
    drawJoint(joint12_14, radius);
    drawJoint(joint13_17, radius);
    drawJoint(joint14_19, radius);
    drawJoint(joint15_21, radius);
    drawJoint(joint16_22, radius);
    drawJoint(joint17_20, radius);
    drawJoint(joint18_18, radius);
    drawJoint(joint19_25, radius);
    drawJoint(joint20_26, radius);
    drawJoint(joint21_27, radius);
    drawJoint(joint22_28, radius);
    drawJoint(joint23_29, radius);
    drawJoint(joint24_30, radius);
    drawJoint(joint25_31, 5);
    drawJoint(joint26_32, radius);
    drawJoint(joint27_33, radius);
    drawJoint(joint28_34, radius);
    drawJoint(joint29_35, radius);
    drawJoint(joint30_36, 5);
    drawJoint(joint31_37, radius);
    drawJoint(joint32_38, radius);
    drawJoint(joint33_39, radius);
    drawJoint(joint34_40, radius);
    drawJoint(joint35_44, radius);
    drawJoint(joint36_45, radius);
  }

  void displayLines() {
    drawLine(joint0_0, joint1_1); // right leg
    drawLine(joint1_1, joint2_2);
    drawLine(joint2_2, joint3_3);
    drawLine(joint3_3, joint4_6);
    drawLine(joint4_6, joint5_8);
    drawLine(joint5_8, joint6_10);
    drawLine(joint6_10, joint7_11);
    drawLine(joint7_11, joint8_9);
    drawLine(joint8_9, joint9_7);
    drawLine(joint9_7, joint3_3);
    drawLine(joint0_0, joint10_12); // left leg
    drawLine(joint10_12, joint11_13);
    drawLine(joint11_13, joint12_14);
    drawLine(joint12_14, joint13_17);
    drawLine(joint13_17, joint14_19);
    drawLine(joint14_19, joint15_21);
    drawLine(joint15_21, joint16_22);
    drawLine(joint16_22, joint17_20);
    drawLine(joint17_20, joint18_18);
    drawLine(joint18_18, joint12_14);
    drawLine(joint0_0, joint19_25);  // spine
    drawLine(joint19_25, joint20_26);
    drawLine(joint20_26, joint21_27);
    drawLine(joint21_27, joint22_28);
    drawLine(joint22_28, joint23_29); // right arm
    drawLine(joint23_29, joint24_30);
    drawLine(joint24_30, joint25_31);
    drawLine(joint25_31, joint26_32);
    drawLine(joint26_32, joint27_33);
    drawLine(joint22_28, joint28_34); // left arm
    drawLine(joint28_34, joint29_35);
    drawLine(joint29_35, joint30_36);
    drawLine(joint30_36, joint31_37);
    drawLine(joint31_37, joint32_38);
    drawLine(joint22_28, joint33_39); // head
    drawLine(joint33_39, joint34_40);
    drawLine(joint34_40, joint35_44);
    drawLine(joint35_44, joint36_45);
    drawLine(joint36_45, joint34_40);
  }

  void displayCones() {
    link0_1.display();
    link1_2.display();
    link2_3.display();
    link3_4.display();
    link4_5.display();
    link5_6.display();
    link6_7.display();
    link7_8.display();
    link8_9.display();
    link9_3.display();
    link0_10.display();// left leg
    link10_11.display();
    link11_12.display();
    link12_13.display();
    link13_14.display();
    link14_15.display();
    link15_16.display();
    link16_17.display();
    link17_18.display();
    link18_12.display();
    link0_19.display();  // spine
    link19_20.display();
    link20_21.display();
    link21_22.display();
    link22_23.display(); // right arm
    link23_24.display();
    link24_25.display();
    link25_26.display();
    link26_27.display();
    link22_28.display(); // left arm
    link28_29.display();
    link29_30.display();
    link30_31.display();
    link31_32.display();
    link22_33.display(); // head
    link33_34.display();
    link34_35.display();
    link35_36.display();
    link36_34.display();
  }
}
