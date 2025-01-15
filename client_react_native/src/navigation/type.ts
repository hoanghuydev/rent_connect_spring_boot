// src/navigation/types.ts
import { CompositeNavigationProp } from '@react-navigation/native';
import { ParamListBase } from '@react-navigation/core';
import {StackNavigationProp} from "@react-navigation/stack";

// Định nghĩa kiểu navigation cho các màn hình trong app của bạn
export type RootStackParamList = {
    Main: undefined;
    Register: undefined;
    Login: undefined;
    LocationFilter : undefined;
    DateFilter : undefined;
    Profile: undefined;
};

export type MainScreenNavigationProp = StackNavigationProp<RootStackParamList, 'Main'>;
export type RegisterScreenNavigationProp = StackNavigationProp<RootStackParamList, 'Register'>;
export type LoginScreenNavigationProp = StackNavigationProp<RootStackParamList, 'Login'>;
export type LocationFilterScreenNavigationProp = StackNavigationProp<RootStackParamList, 'LocationFilter'>;
export type DateFilterScreenNavigationProp = StackNavigationProp<RootStackParamList, 'DateFilter'>;
