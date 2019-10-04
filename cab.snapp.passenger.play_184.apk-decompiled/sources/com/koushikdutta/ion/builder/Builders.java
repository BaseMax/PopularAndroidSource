package com.koushikdutta.ion.builder;

import android.graphics.Bitmap;
import com.koushikdutta.ion.bitmap.BitmapInfo;

public interface Builders {

    public interface Any {

        public interface B extends F, RequestBuilder<F, B, M, U> {
        }

        public interface BF<A extends BF<?>> extends BitmapBuilder<A>, BitmapFutureBuilder, IF<A> {
        }

        public interface F extends FutureBuilder, ImageViewFutureBuilder {
        }

        public interface IF<A extends IF<?>> extends ImageViewBuilder<A>, ImageViewFutureBuilder {
        }

        public interface M extends F, MultipartBodyBuilder<M> {
        }

        public interface U extends F, UrlEncodedBuilder<U> {
        }
    }

    public interface IV {

        public interface F<A extends F<?>> extends BitmapBuilder<A>, ImageViewBuilder<A>, LoadImageViewFutureBuilder {
            Bitmap getBitmap();

            BitmapInfo getBitmapInfo();
        }
    }
}
