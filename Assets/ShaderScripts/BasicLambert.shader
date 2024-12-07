Shader "Holistic / BasicLambert"{
	Properties {
		_Color("Color", Color) = (1,1,1,1)
		
	}
	SubShader {
		Tags { 
			"Queue"="Geometry" 
			}
		
		
		CGPROGRAM
		#pragma surface surf Lambert

		
		fixed4 _Color;

		struct Input {
			float2 uv_MainTex;
		};

		void surf (Input IN, inout SurfaceOutput o) {
			
			o.Albedo = _Color.rgb;
			
		}
		ENDCG
	}}