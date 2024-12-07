Shader "Holistic/RimCutOff4"{

Properties{
	_RimColor ("Rim Color", Color) = (0,0.5,0,0.5)
	_RimPower ("Rim Power", Range(0.5, 8)) = 3
	}

	SubShader{
		CGPROGRAM
		#pragma surface surf Lambert
		struct Input {
			float3 viewDir;
			float3 worldPos;
		};

		float4 _RimColor;
		float _RimPower;

		void surf(Input IN, inout SurfaceOutput o) {
			half rim = 1.0 - saturate(dot(normalize(IN.viewDir), o.Normal));
			o.Emission =  frac(IN.worldPos.y * 10 *0.5) > 0.4 ? 
			float3(0,1,0)*rim: float3(1,0,0)*rim;
		}
		ENDCG
		}
		FallBack "Diffuse"
		}