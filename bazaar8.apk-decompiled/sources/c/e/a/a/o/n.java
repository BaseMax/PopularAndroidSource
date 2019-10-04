package c.e.a.a.o;

import android.opengl.GLES20;
import android.opengl.GLU;
import android.text.TextUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

/* compiled from: GlUtil */
public final class n {
    public static void a() {
        int i2 = 0;
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError != 0) {
                p.b("GlUtil", "glError " + GLU.gluErrorString(i2));
                i2 = glGetError;
            } else {
                return;
            }
        }
    }

    public static int b() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, IntBuffer.wrap(iArr));
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, 10240, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        a();
        return iArr[0];
    }

    public static int a(String[] strArr, String[] strArr2) {
        return a(TextUtils.join("\n", strArr), TextUtils.join("\n", strArr2));
    }

    public static int a(String str, String str2) {
        int glCreateProgram = GLES20.glCreateProgram();
        a();
        a(35633, str, glCreateProgram);
        a(35632, str2, glCreateProgram);
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            a("Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(glCreateProgram));
        }
        a();
        return glCreateProgram;
    }

    public static FloatBuffer a(float[] fArr) {
        return (FloatBuffer) a(fArr.length).put(fArr).flip();
    }

    public static FloatBuffer a(int i2) {
        return ByteBuffer.allocateDirect(i2 * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public static void a(int i2, String str, int i3) {
        int glCreateShader = GLES20.glCreateShader(i2);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            a(GLES20.glGetShaderInfoLog(glCreateShader) + ", source: " + str);
        }
        GLES20.glAttachShader(i3, glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        a();
    }

    public static void a(String str) {
        p.b("GlUtil", str);
    }
}
