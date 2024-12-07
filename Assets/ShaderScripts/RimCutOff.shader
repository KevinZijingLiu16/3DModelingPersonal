Shader "Holistic/RimCutOff"{

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
			o.Emission =  rim > 0.5 ? float3(1,0,0) : rim > 0.3 ? float3(0,1,0):rim > 0.1 ? float3(0,0,1):0;
		}
		ENDCG
		}
		FallBack "Diffuse"
		}