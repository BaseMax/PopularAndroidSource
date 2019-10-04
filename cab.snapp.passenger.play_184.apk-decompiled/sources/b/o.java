package b;

import com.pusher.java_websocket.drafts.c;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class o extends AbstractList<f> implements RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    final f[] f156a;

    /* renamed from: b  reason: collision with root package name */
    final int[] f157b;

    private o(f[] fVarArr, int[] iArr) {
        this.f156a = fVarArr;
        this.f157b = iArr;
    }

    public static o of(f... fVarArr) {
        if (fVarArr.length == 0) {
            return new o(new f[0], new int[]{0, -1});
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(fVarArr));
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList2.add(-1);
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.set(Collections.binarySearch(arrayList, fVarArr[i2]), Integer.valueOf(i2));
        }
        if (((f) arrayList.get(0)).size() != 0) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                f fVar = (f) arrayList.get(i3);
                int i4 = i3 + 1;
                int i5 = i4;
                while (i5 < arrayList.size()) {
                    f fVar2 = (f) arrayList.get(i5);
                    if (!fVar2.startsWith(fVar)) {
                        continue;
                        break;
                    } else if (fVar2.size() == fVar.size()) {
                        throw new IllegalArgumentException("duplicate option: ".concat(String.valueOf(fVar2)));
                    } else if (((Integer) arrayList2.get(i5)).intValue() > ((Integer) arrayList2.get(i3)).intValue()) {
                        arrayList.remove(i5);
                        arrayList2.remove(i5);
                    } else {
                        i5++;
                    }
                }
                i3 = i4;
            }
            c cVar = new c();
            a(0, cVar, 0, arrayList, 0, arrayList.size(), arrayList2);
            int[] iArr = new int[a(cVar)];
            for (int i6 = 0; i6 < iArr.length; i6++) {
                iArr[i6] = cVar.readInt();
            }
            if (cVar.exhausted()) {
                return new o((f[]) fVarArr.clone(), iArr);
            }
            throw new AssertionError();
        }
        throw new IllegalArgumentException("the empty byte string is not a supported option");
    }

    private static void a(long j, c cVar, int i, List<f> list, int i2, int i3, List<Integer> list2) {
        int i4;
        int i5;
        c cVar2;
        int i6;
        c cVar3 = cVar;
        int i7 = i;
        List<f> list3 = list;
        int i8 = i2;
        int i9 = i3;
        List<Integer> list4 = list2;
        if (i8 < i9) {
            int i10 = i8;
            while (i10 < i9) {
                if (list3.get(i10).size() >= i7) {
                    i10++;
                } else {
                    throw new AssertionError();
                }
            }
            f fVar = list.get(i2);
            f fVar2 = list3.get(i9 - 1);
            int i11 = -1;
            if (i7 == fVar.size()) {
                i11 = list4.get(i8).intValue();
                i8++;
                fVar = list3.get(i8);
            }
            int i12 = i8;
            if (fVar.getByte(i7) != fVar2.getByte(i7)) {
                int i13 = 1;
                for (int i14 = i12 + 1; i14 < i9; i14++) {
                    if (list3.get(i14 - 1).getByte(i7) != list3.get(i14).getByte(i7)) {
                        i13++;
                    }
                }
                long a2 = j + ((long) a(cVar)) + 2 + ((long) (i13 * 2));
                cVar3.writeInt(i13);
                cVar3.writeInt(i11);
                for (int i15 = i12; i15 < i9; i15++) {
                    byte b2 = list3.get(i15).getByte(i7);
                    if (i15 == i12 || b2 != list3.get(i15 - 1).getByte(i7)) {
                        cVar3.writeInt((int) b2 & c.END_OF_FRAME);
                    }
                }
                c cVar4 = new c();
                int i16 = i12;
                while (i16 < i9) {
                    byte b3 = list3.get(i16).getByte(i7);
                    int i17 = i16 + 1;
                    int i18 = i17;
                    while (true) {
                        if (i18 >= i9) {
                            i5 = i9;
                            break;
                        } else if (b3 != list3.get(i18).getByte(i7)) {
                            i5 = i18;
                            break;
                        } else {
                            i18++;
                        }
                    }
                    if (i17 == i5 && i7 + 1 == list3.get(i16).size()) {
                        cVar3.writeInt(list4.get(i16).intValue());
                        i6 = i5;
                        cVar2 = cVar4;
                    } else {
                        cVar3.writeInt((int) ((((long) a(cVar4)) + a2) * -1));
                        i6 = i5;
                        cVar2 = cVar4;
                        a(a2, cVar4, i7 + 1, list, i16, i5, list2);
                    }
                    cVar4 = cVar2;
                    i16 = i6;
                }
                c cVar5 = cVar4;
                cVar3.write(cVar5, cVar5.size());
                return;
            }
            int min = Math.min(fVar.size(), fVar2.size());
            int i19 = i7;
            int i20 = 0;
            while (i19 < min && fVar.getByte(i19) == fVar2.getByte(i19)) {
                i20++;
                i19++;
            }
            long a3 = 1 + j + ((long) a(cVar)) + 2 + ((long) i20);
            cVar3.writeInt(-i20);
            cVar3.writeInt(i11);
            int i21 = i7;
            while (true) {
                i4 = i7 + i20;
                if (i21 >= i4) {
                    break;
                }
                cVar3.writeInt((int) fVar.getByte(i21) & c.END_OF_FRAME);
                i21++;
            }
            if (i12 + 1 != i9) {
                c cVar6 = new c();
                cVar3.writeInt((int) ((((long) a(cVar6)) + a3) * -1));
                a(a3, cVar6, i4, list, i12, i3, list2);
                cVar3.write(cVar6, cVar6.size());
            } else if (i4 == list3.get(i12).size()) {
                cVar3.writeInt(list4.get(i12).intValue());
            } else {
                throw new AssertionError();
            }
        } else {
            throw new AssertionError();
        }
    }

    public final f get(int i) {
        return this.f156a[i];
    }

    public final int size() {
        return this.f156a.length;
    }

    private static int a(c cVar) {
        return (int) (cVar.size() / 4);
    }
}
