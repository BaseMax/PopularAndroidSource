package com.koushikdutta.async.e;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;

public final class g {
    public static void fastChannelCopy(ReadableByteChannel readableByteChannel, WritableByteChannel writableByteChannel) throws IOException {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(16384);
        while (readableByteChannel.read(allocateDirect) != -1) {
            allocateDirect.flip();
            writableByteChannel.write(allocateDirect);
            allocateDirect.compact();
        }
        allocateDirect.flip();
        while (allocateDirect.hasRemaining()) {
            writableByteChannel.write(allocateDirect);
        }
    }

    public static void copyStream(InputStream inputStream, OutputStream outputStream) throws IOException {
        fastChannelCopy(Channels.newChannel(inputStream), Channels.newChannel(outputStream));
    }

    public static byte[] readToEndAsArray(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = dataInputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                dataInputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static String readToEnd(InputStream inputStream) throws IOException {
        return new String(readToEndAsArray(inputStream));
    }

    public static String readFile(String str) throws IOException {
        return readFile(new File(str));
    }

    public static String readFileSilent(String str) {
        try {
            return readFile(new File(str));
        } catch (IOException unused) {
            return null;
        }
    }

    public static String readFile(File file) throws IOException {
        byte[] bArr = new byte[((int) file.length())];
        DataInputStream dataInputStream = null;
        try {
            DataInputStream dataInputStream2 = new DataInputStream(new FileInputStream(file));
            try {
                dataInputStream2.readFully(bArr);
                closeQuietly(dataInputStream2);
                return new String(bArr);
            } catch (Throwable th) {
                th = th;
                dataInputStream = dataInputStream2;
                closeQuietly(dataInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            closeQuietly(dataInputStream);
            throw th;
        }
    }

    public static void writeFile(File file, String str) throws IOException {
        file.getParentFile().mkdirs();
        DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        dataOutputStream.write(str.getBytes());
        dataOutputStream.close();
    }

    public static void writeFile(String str, String str2) throws IOException {
        writeFile(new File(str), str2);
    }

    public static void closeQuietly(Closeable... closeableArr) {
        if (closeableArr != null) {
            for (Closeable closeable : closeableArr) {
                if (closeable != null) {
                    try {
                        closeable.close();
                    } catch (IOException unused) {
                    }
                }
            }
        }
    }

    public static void eat(InputStream inputStream) throws IOException {
        do {
        } while (inputStream.read(new byte[1024]) != -1);
    }
}
