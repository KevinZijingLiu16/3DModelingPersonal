Shader "Holistic/HelloHIShader"{
	Properties{
		_myColour ("Example Colour", Color) = (1,1,1,1)
		_myEmission ("Exmple Emission", Color ) = (1,1,1,1)
		_myNormal ("Example Normal", Color) = (1,1,1,1)
		}

		SubShader{
			CGPROGRAM
			#pragma surface surf Lambert


			struct Input{
				float2 uv_MainTex;
			};

			fixed4 _myColour;
			fixed4 _myEmission;
			fixed4 _myNormal;

			void surf (Input IN, inout SurfaceOutput o){
				o.Albedo= _myColour.rgb;
				o.Emission= _myEmission.rgb;
				o.Normal= _myNormal.rgb;
			}

			ENDCG
	}

	FallBack "Diffuse"
	}
