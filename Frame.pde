class Frame {

  int sides = 20; // how many sides the cylinders have
  boolean joints = false; // if true, spheres will be drawn at joints
  boolean lines = true; // if true, lines will connect joints
  boolean links = false; // if true, cylinders will connect joints

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

  Frame(String csvLine) {
    String[] positions = split(csvLine, ',');  // split each line into an array of strings

    // named as order#_actual#.  assign triplets to specific joints.
    joint0_0 = new PVector(float(positions[2]), float(positions[3]), float(positions[4]));
    joint1_1 = new PVector(float(positions[5]), float(positions[6]), float(positions[7]));    
    joint2_2 = new PVector(float(positions[8]), float(positions[9]), float(positions[10]));
    joint3_3 = new PVector(float(positions[11]), float(positions[12]), float(positions[13]));
    joint4_6 = new PVector(float(positions[14]), float(positions[15]), float(positions[16]));
    joint5_8 = new PVector(float(positions[17]), float(positions[18]), float(positions[19]));
    joint6_10 = new PVector(float(positions[20]), float(positions[21]), float(positions[22]));
    joint7_11 = new PVector(float(positions[23]), float(positions[24]), float(positions[25]));
    joint8_9 = new PVector(float(positions[26]), float(positions[27]), float(positions[28]));
    joint9_7 = new PVector(float(positions[29]), float(positions[30]), float(positions[31]));
    joint10_12 = new PVector(float(positions[32]), float(positions[33]), float(positions[34]));
    joint11_13 = new PVector(float(positions[35]), float(positions[36]), float(positions[37]));
    joint12_14 = new PVector(float(positions[38]), float(positions[39]), float(positions[40]));
    joint13_17 = new PVector(float(positions[41]), float(positions[42]), float(positions[43]));
    joint14_19 = new PVector(float(positions[44]), float(positions[45]), float(positions[46]));
    joint15_21 = new PVector(float(positions[47]), float(positions[48]), float(positions[49]));
    joint16_22 = new PVector(float(positions[50]), float(positions[51]), float(positions[52]));
    joint17_20 = new PVector(float(positions[53]), float(positions[54]), float(positions[55]));
    joint18_18 = new PVector(float(positions[56]), float(positions[57]), float(positions[58]));
    joint19_25 = new PVector(float(positions[59]), float(positions[60]), float(positions[61]));
    joint20_26 = new PVector(float(positions[62]), float(positions[63]), float(positions[64]));
    joint21_27 = new PVector(float(positions[65]), float(positions[66]), float(positions[67]));
    joint22_28 = new PVector(float(positions[68]), float(positions[69]), float(positions[70]));
    joint23_29 = new PVector(float(positions[71]), float(positions[72]), float(positions[73]));
    joint24_30 = new PVector(float(positions[74]), float(positions[75]), float(positions[76]));
    joint25_31 = new PVector(float(positions[77]), float(positions[78]), float(positions[79]));
    joint26_32 = new PVector(float(positions[80]), float(positions[81]), float(positions[82]));
    joint27_33 = new PVector(float(positions[83]), float(positions[84]), float(positions[85]));
    joint28_34 = new PVector(float(positions[86]), float(positions[87]), float(positions[88]));
    joint29_35 = new PVector(float(positions[89]), float(positions[90]), float(positions[91]));
    joint30_36 = new PVector(float(positions[92]), float(positions[93]), float(positions[94]));
    joint31_37 = new PVector(float(positions[95]), float(positions[96]), float(positions[97]));
    joint32_38 = new PVector(float(positions[98]), float(positions[99]), float(positions[100]));
    joint33_39 = new PVector(float(positions[101]), float(positions[102]), float(positions[103]));
    joint34_40 = new PVector(float(positions[104]), float(positions[105]), float(positions[106]));
    joint35_44 = new PVector(float(positions[107]), float(positions[108]), float(positions[109]));
    joint36_45 = new PVector(float(positions[110]), float(positions[111]), float(positions[112]));

    // named for order 
    link0_1 = new Segment(joint0_0, joint1_1, 2, 2, sides);  // right leg
    link1_2 = new Segment(joint1_1, joint2_2, 2, 2, sides);
    link2_3 = new Segment(joint2_2, joint3_3, 2, 2, sides);
    link3_4 = new Segment(joint3_3, joint4_6, 2, 2, sides);
    link4_5 = new Segment(joint4_6, joint5_8, 2, 2, sides);
    link5_6 = new Segment(joint5_8, joint6_10, 2, 2, sides);
    link6_7 = new Segment(joint6_10, joint7_11, 2, 2, sides);
    link7_8 = new Segment(joint7_11, joint8_9, 2, 2, sides);
    link8_9 = new Segment(joint8_9, joint9_7, 2, 2, sides);
    link9_3 = new Segment(joint9_7, joint3_3, 2, 2, sides);
    link0_10 = new Segment(joint0_0, joint10_12, 2, 2, sides);// left leg
    link10_11 = new Segment(joint10_12, joint11_13, 2, 2, sides);
    link11_12 = new Segment(joint11_13, joint12_14, 2, 2, sides);
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
    link24_25 = new Segment(joint24_30, joint25_31, 2, 2, sides);
    link25_26 = new Segment(joint25_31, joint26_32, 2, 2, sides);
    link26_27 = new Segment(joint26_32, joint27_33, 2, 2, sides);
    link22_28 = new Segment(joint22_28, joint28_34, 2, 2, sides); // left arm
    link28_29 = new Segment(joint28_34, joint29_35, 2, 2, sides);
    link29_30 = new Segment(joint29_35, joint30_36, 2, 2, sides);
    link30_31 = new Segment(joint30_36, joint31_37, 2, 2, sides);
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
    sphereDetail(60);
    noStroke();
    pushMatrix();
    translate(joint.x, joint.y);
    sphere(radius);
    popMatrix();
  }

  void drawLine(PVector joint1, PVector joint2) {
    line(joint1.x, joint1.y, joint1.z, joint2.x, joint2.y, joint2.z);
  }

  void draw() {
    if (joints) {
      drawJoint(joint0_0, 2);
      drawJoint(joint1_1, 2);
      drawJoint(joint2_2, 2);
      drawJoint(joint3_3, 2);
      drawJoint(joint4_6, 2);
      drawJoint(joint5_8, 2);
      drawJoint(joint6_10, 2);
      drawJoint(joint7_11, 2);
      drawJoint(joint8_9, 2);
      drawJoint(joint9_7, 2);
      drawJoint(joint10_12, 2);
      drawJoint(joint11_13, 2);
      drawJoint(joint12_14, 2);
      drawJoint(joint13_17, 2);
      drawJoint(joint14_19, 2);
      drawJoint(joint15_21, 2);
      drawJoint(joint16_22, 2);
      drawJoint(joint17_20, 2);
      drawJoint(joint18_18, 2);
      drawJoint(joint19_25, 2);
      drawJoint(joint20_26, 2);
      drawJoint(joint21_27, 2);
      drawJoint(joint22_28, 2);
      drawJoint(joint23_29, 2);
      drawJoint(joint24_30, 2);
      drawJoint(joint25_31, 2);
      drawJoint(joint26_32, 2);
      drawJoint(joint27_33, 2);
      drawJoint(joint28_34, 2);
      drawJoint(joint29_35, 2);
      drawJoint(joint30_36, 2);
      drawJoint(joint31_37, 2);
      drawJoint(joint32_38, 2);
      drawJoint(joint33_39, 2);
      drawJoint(joint34_40, 2);
      drawJoint(joint35_44, 2);
      drawJoint(joint36_45, 2);
    }

    if (lines) {
      strokeWeight(2);
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

    if (links) {
      fill(#D01DDE);  // set color for joint centers and segments
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
  } // close draw
}

