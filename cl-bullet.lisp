;;;; cl-bullet.lisp

(in-package #:cl-bullet)

(cl:defclass bt-vector3()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_floats) (arg0 (obj bt-vector3))
  (btVector3_m_floats_set (ff-pointer obj) arg0))

(cl:defmethod m_floats ((obj bt-vector3))
  (btVector3_m_floats_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-vector3) &key)
  (setf (slot-value obj 'ff-pointer) (new_btVector3_default)))

(cl:defmethod initialize-instance :after ((obj bt-vector3) &key (_x cl:number) (_y cl:number) (_z cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btVector3 _x _y _z)))

(cl:shadow "+=")
(cl:defmethod += ((self bt-vector3) (v bt-vector3))
  (btVector3___add_assign__ (ff-pointer self) (ff-pointer v)))

(cl:shadow "-=")
(cl:defmethod -= ((self bt-vector3) (v bt-vector3))
  (btVector3___sub_assign__ (ff-pointer self) (ff-pointer v)))

(cl:shadow "*=")
(cl:defmethod *= ((self bt-vector3) (s cl:number))
  (btVector3___mul_assign__ (ff-pointer self) s))

(cl:shadow "/=")
(cl:defmethod /= ((self bt-vector3) (s cl:number))
  (btVector3___div_assign__ (ff-pointer self) s))

(cl:defmethod dot ((self bt-vector3) (v bt-vector3))
  (btVector3_btdot (ff-pointer self) (ff-pointer v)))

(cl:defmethod length2 ((self bt-vector3))
  (btVector3_length2 (ff-pointer self)))

(cl:defmethod length ((self bt-vector3))
  (btVector3_btlength (ff-pointer self)))

(cl:defmethod norm ((self bt-vector3))
  (btVector3_norm (ff-pointer self)))

(cl:defmethod distance2 ((self bt-vector3) (v bt-vector3))
  (btVector3_distance2 (ff-pointer self) (ff-pointer v)))

(cl:defmethod distance ((self bt-vector3) (v bt-vector3))
  (btVector3_distance (ff-pointer self) (ff-pointer v)))

(cl:defmethod safe-normalize ((self bt-vector3))
  (btVector3_safeNormalize (ff-pointer self)))

(cl:defmethod normalize ((self bt-vector3))
  (btVector3_normalize (ff-pointer self)))

(cl:defmethod normalized ((self bt-vector3))
  (btVector3_normalized (ff-pointer self)))

(cl:defmethod rotate ((self bt-vector3) (wAxis bt-vector3) (angle cl:number))
  (btVector3_rotate (ff-pointer self) (ff-pointer wAxis) angle))

(cl:defmethod angle ((self bt-vector3) (v bt-vector3))
  (btVector3_angle (ff-pointer self) (ff-pointer v)))

(cl:defmethod absolute ((self bt-vector3))
  (btVector3_absolute (ff-pointer self)))

(cl:defmethod cross ((self bt-vector3) (v bt-vector3))
  (btVector3_cross (ff-pointer self) (ff-pointer v)))

(cl:defmethod triple ((self bt-vector3) (v1 bt-vector3) (v2 bt-vector3))
  (btVector3_triple (ff-pointer self) (ff-pointer v1) (ff-pointer v2)))

(cl:defmethod min-axis ((self bt-vector3))
  (btVector3_minAxis (ff-pointer self)))

(cl:defmethod max-axis ((self bt-vector3))
  (btVector3_maxAxis (ff-pointer self)))

(cl:defmethod furthest-axis ((self bt-vector3))
  (btVector3_furthestAxis (ff-pointer self)))

(cl:defmethod closest-axis ((self bt-vector3))
  (btVector3_closestAxis (ff-pointer self)))

(cl:defmethod set-interpolate3 ((self bt-vector3) (v0 bt-vector3) (v1 bt-vector3) (rt cl:number))
  (btVector3_setInterpolate3 (ff-pointer self) (ff-pointer v0) (ff-pointer v1) rt))

(cl:defmethod lerp ((self bt-vector3) (v bt-vector3) (t-arg2 cl:number))
  (btVector3_lerp (ff-pointer self) (ff-pointer v) t-arg2))

(cl:shadow "*=")
(cl:defmethod *= ((self bt-vector3) (v bt-vector3))
  (btVector3___mul_assign__ (ff-pointer self) (ff-pointer v)))

(cl:defmethod get-x ((self bt-vector3))
  (btVector3_getX (ff-pointer self)))

(cl:defmethod get-y ((self bt-vector3))
  (btVector3_getY (ff-pointer self)))

(cl:defmethod get-z ((self bt-vector3))
  (btVector3_getZ (ff-pointer self)))

(cl:defmethod set-x ((self bt-vector3) (_x cl:number))
  (btVector3_setX (ff-pointer self) _x))

(cl:defmethod set-y ((self bt-vector3) (_y cl:number))
  (btVector3_setY (ff-pointer self) _y))

(cl:defmethod set-z ((self bt-vector3) (_z cl:number))
  (btVector3_setZ (ff-pointer self) _z))

(cl:defmethod set-w ((self bt-vector3) (_w cl:number))
  (btVector3_setW (ff-pointer self) _w))

(cl:defmethod x ((self bt-vector3))
  (btVector3_x (ff-pointer self)))

(cl:defmethod y ((self bt-vector3))
  (btVector3_y (ff-pointer self)))

(cl:defmethod z ((self bt-vector3))
  (btVector3_z (ff-pointer self)))

(cl:defmethod w ((self bt-vector3))
  (btVector3_w (ff-pointer self)))

(cl:shadow "==")
(cl:defmethod == ((self bt-vector3) (other bt-vector3))
  (btVector3___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self bt-vector3) (other bt-vector3))
  (btVector3___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-max ((self bt-vector3) (other bt-vector3))
  (btVector3_setMax (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-min ((self bt-vector3) (other bt-vector3))
  (btVector3_setMin (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-value ((self bt-vector3) (_x cl:number) (_y cl:number) (_z cl:number))
  (btVector3_setValue (ff-pointer self) _x _y _z))

(cl:defmethod get-skew-symmetric-matrix ((self bt-vector3) (v0 bt-vector3) (v1 bt-vector3) (v2 bt-vector3))
  (btVector3_getSkewSymmetricMatrix (ff-pointer self) (ff-pointer v0) (ff-pointer v1) (ff-pointer v2)))

(cl:defmethod set-zero ((self bt-vector3))
  (btVector3_setZero (ff-pointer self)))

(cl:defmethod is-zero ((self bt-vector3))
  (btVector3_isZero (ff-pointer self)))

(cl:defmethod fuzzy-zero ((self bt-vector3))
  (btVector3_fuzzyZero (ff-pointer self)))

(cl:defmethod serialize ((self bt-vector3) dataOut)
  (btVector3_serialize (ff-pointer self) dataOut))

(cl:defmethod de-serialize ((self bt-vector3) dataIn)
  (btVector3_deSerialize (ff-pointer self) dataIn))

(cl:defmethod serialize-float ((self bt-vector3) dataOut)
  (btVector3_serializeFloat (ff-pointer self) dataOut))

(cl:defmethod de-serialize-float ((self bt-vector3) dataIn)
  (btVector3_deSerializeFloat (ff-pointer self) dataIn))

(cl:defmethod serialize-double ((self bt-vector3) dataOut)
  (btVector3_serializeDouble (ff-pointer self) dataOut))

(cl:defmethod de-serialize-double ((self bt-vector3) dataIn)
  (btVector3_deSerializeDouble (ff-pointer self) dataIn))

(cl:defmethod max-dot ((self bt-vector3) (array bt-vector3) (array_count cl:integer) dotOut)
  (btVector3_maxDot (ff-pointer self) (ff-pointer array) array_count dotOut))

(cl:defmethod min-dot ((self bt-vector3) (array bt-vector3) (array_count cl:integer) dotOut)
  (btVector3_minDot (ff-pointer self) (ff-pointer array) array_count dotOut))

(cl:defmethod dot3 ((self bt-vector3) (v0 bt-vector3) (v1 bt-vector3) (v2 bt-vector3))
  (btVector3_dot3 (ff-pointer self) (ff-pointer v0) (ff-pointer v1) (ff-pointer v2)))


(cl:defclass bt-vector4(btVector3)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-vector4) &key)
  (setf (slot-value obj 'ff-pointer) (new_btVector4_default)))

(cl:defmethod initialize-instance :after ((obj bt-vector4) &key (_x cl:number) (_y cl:number) (_z cl:number) (_w cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btVector4 _x _y _z _w)))

(cl:defmethod absolute4 ((self bt-vector4))
  (btVector4_absolute4 (ff-pointer self)))

(cl:defmethod get-w ((self bt-vector4))
  (btVector4_getW (ff-pointer self)))

(cl:defmethod max-axis4 ((self bt-vector4))
  (btVector4_maxAxis4 (ff-pointer self)))

(cl:defmethod min-axis4 ((self bt-vector4))
  (btVector4_minAxis4 (ff-pointer self)))

(cl:defmethod closest-axis4 ((self bt-vector4))
  (btVector4_closestAxis4 (ff-pointer self)))

(cl:defmethod set-value ((self bt-vector4) (_x cl:number) (_y cl:number) (_z cl:number) (_w cl:number))
  (btVector4_setValue (ff-pointer self) _x _y _z _w))


(cl:defclass bt-quad-word()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-x ((self bt-quad-word))
  (btQuadWord_getX (ff-pointer self)))

(cl:defmethod get-y ((self bt-quad-word))
  (btQuadWord_getY (ff-pointer self)))

(cl:defmethod get-z ((self bt-quad-word))
  (btQuadWord_getZ (ff-pointer self)))

(cl:defmethod set-x ((self bt-quad-word) (_x cl:number))
  (btQuadWord_setX (ff-pointer self) _x))

(cl:defmethod set-y ((self bt-quad-word) (_y cl:number))
  (btQuadWord_setY (ff-pointer self) _y))

(cl:defmethod set-z ((self bt-quad-word) (_z cl:number))
  (btQuadWord_setZ (ff-pointer self) _z))

(cl:defmethod set-w ((self bt-quad-word) (_w cl:number))
  (btQuadWord_setW (ff-pointer self) _w))

(cl:defmethod x ((self bt-quad-word))
  (btQuadWord_x (ff-pointer self)))

(cl:defmethod y ((self bt-quad-word))
  (btQuadWord_y (ff-pointer self)))

(cl:defmethod z ((self bt-quad-word))
  (btQuadWord_z (ff-pointer self)))

(cl:defmethod w ((self bt-quad-word))
  (btQuadWord_w (ff-pointer self)))

(cl:shadow "==")
(cl:defmethod == ((self bt-quad-word) (other bt-quad-word))
  (btQuadWord___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self bt-quad-word) (other bt-quad-word))
  (btQuadWord___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-value ((self bt-quad-word) (_x cl:number) (_y cl:number) (_z cl:number))
  (btQuadWord_setValue (ff-pointer self) _x _y _z))

(cl:defmethod set-value ((self bt-quad-word) (_x cl:number) (_y cl:number) (_z cl:number) (_w cl:number))
  (btQuadWord_setValue (ff-pointer self) _x _y _z _w))

(cl:defmethod initialize-instance :after ((obj bt-quad-word) &key)
  (setf (slot-value obj 'ff-pointer) (new_btQuadWord_default)))

(cl:defmethod initialize-instance :after ((obj bt-quad-word) &key (_x cl:number) (_y cl:number) (_z cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btQuadWord_xyz _x _y _z)))

(cl:defmethod initialize-instance :after ((obj bt-quad-word) &key (_x cl:number) (_y cl:number) (_z cl:number) (_w cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btQuadWord_xyzw _x _y _z _w)))

(cl:defmethod set-max ((self bt-quad-word) (other bt-quad-word))
  (btQuadWord_setMax (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-min ((self bt-quad-word) (other bt-quad-word))
  (btQuadWord_setMin (ff-pointer self) (ff-pointer other)))


(cl:defclass bt-quaternion(btQuadWord)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-quaternion) &key)
  (setf (slot-value obj 'ff-pointer) (new_btQuaternion_default)))

(cl:defmethod initialize-instance :after ((obj bt-quaternion) &key (_x cl:number) (_y cl:number) (_z cl:number) (_w cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btQuaternion_from_4btScalars _x _y _z _w)))

(cl:defmethod initialize-instance :after ((obj bt-quaternion) &key (_axis bt-vector3) (_angle cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btQuaternion _axis _angle)))

(cl:defmethod initialize-instance :after ((obj bt-quaternion) &key (yaw cl:number) (pitch cl:number) (roll cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btQuaternion_from_3btScalars yaw pitch roll)))

(cl:defmethod set-rotation ((self bt-quaternion) (axis bt-vector3) (_angle cl:number))
  (btQuaternion_setRotation (ff-pointer self) axis _angle))

(cl:defmethod set-euler ((self bt-quaternion) (yaw cl:number) (pitch cl:number) (roll cl:number))
  (btQuaternion_setEuler (ff-pointer self) yaw pitch roll))

(cl:defmethod set-euler-zyx ((self bt-quaternion) (yaw cl:number) (pitch cl:number) (roll cl:number))
  (btQuaternion_setEulerZYX (ff-pointer self) yaw pitch roll))

(cl:shadow "+=")
(cl:defmethod += ((self bt-quaternion) (q bt-quaternion))
  (btQuaternion___add_assign__ (ff-pointer self) (ff-pointer q)))

(cl:shadow "-=")
(cl:defmethod -= ((self bt-quaternion) (q bt-quaternion))
  (btQuaternion___sub_assign__ (ff-pointer self) (ff-pointer q)))

(cl:shadow "*=")
(cl:defmethod *= ((self bt-quaternion) (s cl:number))
  (btQuaternion___mul_assign__ (ff-pointer self) s))

(cl:shadow "*=")
(cl:defmethod *= ((self bt-quaternion) (q bt-quaternion))
  (btQuaternion___mul_assign__ (ff-pointer self) (ff-pointer q)))

(cl:defmethod dot ((self bt-quaternion) (q bt-quaternion))
  (btQuaternion_btdot (ff-pointer self) (ff-pointer q)))

(cl:defmethod length2 ((self bt-quaternion))
  (btQuaternion_length2 (ff-pointer self)))

(cl:defmethod length ((self bt-quaternion))
  (btQuaternion_btlength (ff-pointer self)))

(cl:defmethod normalize ((self bt-quaternion))
  (btQuaternion_normalize (ff-pointer self)))

(cl:shadow "*")
(cl:defmethod * ((self bt-quaternion) (s cl:number))
  (btQuaternion___mul__ (ff-pointer self) s))

(cl:shadow "/")
(cl:defmethod / ((self bt-quaternion) (s cl:number))
  (btQuaternion___div__ (ff-pointer self) s))

(cl:shadow "/=")
(cl:defmethod /= ((self bt-quaternion) (s cl:number))
  (btQuaternion___div_assign__ (ff-pointer self) s))

(cl:defmethod normalized ((self bt-quaternion))
  (btQuaternion_normalized (ff-pointer self)))

(cl:defmethod angle ((self bt-quaternion) (q bt-quaternion))
  (btQuaternion_angle (ff-pointer self) (ff-pointer q)))

(cl:defmethod angle-shortest-path ((self bt-quaternion) (q bt-quaternion))
  (btQuaternion_angleShortestPath (ff-pointer self) (ff-pointer q)))

(cl:defmethod get-angle ((self bt-quaternion))
  (btQuaternion_getAngle (ff-pointer self)))

(cl:defmethod get-angle-shortest-path ((self bt-quaternion))
  (btQuaternion_getAngleShortestPath (ff-pointer self)))

(cl:defmethod get-axis ((self bt-quaternion))
  (btQuaternion_getAxis (ff-pointer self)))

(cl:defmethod inverse ((self bt-quaternion))
  (btQuaternion_inverse (ff-pointer self)))

(cl:shadow "+")
(cl:defmethod + ((self bt-quaternion) (q2 bt-quaternion))
  (btQuaternion___add__ (ff-pointer self) (ff-pointer q2)))

(cl:shadow "-")
(cl:defmethod - ((self bt-quaternion) (q2 bt-quaternion))
  (btQuaternion___sub__ (ff-pointer self) (ff-pointer q2)))

(cl:shadow "-")
(cl:defmethod - ((self bt-quaternion))
  (btQuaternion___neg__ (ff-pointer self)))

(cl:defmethod farthest ((self bt-quaternion) (qd bt-quaternion))
  (btQuaternion_farthest (ff-pointer self) (ff-pointer qd)))

(cl:defmethod nearest ((self bt-quaternion) (qd bt-quaternion))
  (btQuaternion_nearest (ff-pointer self) (ff-pointer qd)))

(cl:defmethod slerp ((self bt-quaternion) (q bt-quaternion) (t-arg2 cl:number))
  (btQuaternion_slerp (ff-pointer self) (ff-pointer q) t-arg2))

(cl:defmethod get-w ((self bt-quaternion))
  (btQuaternion_getW (ff-pointer self)))


(cl:defclass bt-transform()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-transform) &key)
  (setf (slot-value obj 'ff-pointer) (new_btTransform_default)))

(cl:defmethod initialize-instance :after ((obj bt-transform) &key (q bt-quaternion) (c bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btTransform_from_btQuaternion_and_btVector q c)))

(cl:defmethod initialize-instance :after ((obj bt-transform) &key (q bt-quaternion))
  (setf (slot-value obj 'ff-pointer) (new_btTransform_from_btQuaternion q)))

(cl:defmethod initialize-instance :after ((obj bt-transform) &key b (c bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btTransform_from_btMatrix_and_btVector b c)))

(cl:defmethod initialize-instance :after ((obj bt-transform) &key b)
  (setf (slot-value obj 'ff-pointer) (new_btTransform_from_btMatrix b)))

(cl:defmethod initialize-instance :after ((obj bt-transform) &key (other bt-transform))
  (setf (slot-value obj 'ff-pointer) (new_btTransform_from_btTransform (ff-pointer other))))

(cl:shadow "=")
(cl:defmethod = ((self bt-transform) (other bt-transform))
  (btTransform___assign__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod mult ((self bt-transform) (t1 bt-transform) (t2 bt-transform))
  (btTransform_mult (ff-pointer self) (ff-pointer t1) (ff-pointer t2)))

(cl:shadow "()")
(cl:defmethod () ((self bt-transform) (x bt-vector3))
  (btTransform___funcall__ (ff-pointer self) x))

(cl:shadow "*")
(cl:defmethod * ((self bt-transform) (x bt-vector3))
  (btTransform___mul__ (ff-pointer self) x))

(cl:shadow "*")
(cl:defmethod * ((self bt-transform) (q bt-quaternion))
  (btTransform___mul__ (ff-pointer self) q))

(cl:defmethod get-basis ((self bt-transform))
  (btTransform_getBasis (ff-pointer self)))

(cl:defmethod get-basis ((self bt-transform))
  (btTransform_getBasis (ff-pointer self)))

(cl:defmethod get-origin ((self bt-transform))
  (btTransform_getOrigin (ff-pointer self)))

(cl:defmethod get-origin ((self bt-transform))
  (btTransform_getOrigin (ff-pointer self)))

(cl:defmethod get-rotation ((self bt-transform))
  (btTransform_getRotation (ff-pointer self)))

(cl:defmethod set-from-open-glmatrix ((self bt-transform) m)
  (btTransform_setFromOpenGLMatrix (ff-pointer self) m))

(cl:defmethod get-open-glmatrix ((self bt-transform) m)
  (btTransform_getOpenGLMatrix (ff-pointer self) m))

(cl:defmethod set-origin ((self bt-transform) (origin bt-vector3))
  (btTransform_setOrigin (ff-pointer self) origin))

(cl:defmethod inv-xform ((self bt-transform) (inVec bt-vector3))
  (btTransform_invXform (ff-pointer self) inVec))

(cl:defmethod set-basis ((self bt-transform) basis)
  (btTransform_setBasis (ff-pointer self) basis))

(cl:defmethod set-rotation ((self bt-transform) (q bt-quaternion))
  (btTransform_setRotation (ff-pointer self) q))

(cl:defmethod set-identity ((self bt-transform))
  (btTransform_setIdentity (ff-pointer self)))

(cl:shadow "*=")
(cl:defmethod *= ((self bt-transform) (t-arg1 bt-transform))
  (btTransform___mul_assign__ (ff-pointer self) (ff-pointer t-arg1)))

(cl:defmethod inverse ((self bt-transform))
  (btTransform_inverse (ff-pointer self)))

(cl:defmethod inverse-times ((self bt-transform) (t-arg1 bt-transform))
  (btTransform_inverseTimes (ff-pointer self) (ff-pointer t-arg1)))

(cl:shadow "*")
(cl:defmethod * ((self bt-transform) (t-arg1 bt-transform))
  (btTransform___mul__ (ff-pointer self) (ff-pointer t-arg1)))

(cl:defmethod serialize ((self bt-transform) dataOut)
  (btTransform_serialize (ff-pointer self) dataOut))

(cl:defmethod serialize-float ((self bt-transform) dataOut)
  (btTransform_serializeFloat (ff-pointer self) dataOut))

(cl:defmethod de-serialize ((self bt-transform) dataIn)
  (btTransform_deSerialize (ff-pointer self) dataIn))

(cl:defmethod de-serialize-double ((self bt-transform) dataIn)
  (btTransform_deSerializeDouble (ff-pointer self) dataIn))

(cl:defmethod de-serialize-float ((self bt-transform) dataIn)
  (btTransform_deSerializeFloat (ff-pointer self) dataIn))


(cl:defclass bt-matrix3x3()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-matrix3x3) &key)
  (setf (slot-value obj 'ff-pointer) (new_btMatrix3x3_default)))

(cl:defmethod initialize-instance :after ((obj bt-matrix3x3) &key (q bt-quaternion))
  (setf (slot-value obj 'ff-pointer) (new_btMatrix3x3_from_btQuaternion q)))

(cl:defmethod initialize-instance :after ((obj bt-matrix3x3) &key (xx cl:number) (xy cl:number) (xz cl:number) (yx cl:number) (yy cl:number) (yz cl:number) (zx cl:number) (zy cl:number) (zz cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btMatrix3x3 xx xy xz yx yy yz zx zy zz)))

(cl:defmethod initialize-instance :after ((obj bt-matrix3x3) &key (other bt-matrix3x3))
  (setf (slot-value obj 'ff-pointer) (new_btMatrix3x3_from_btMatrix3x3 (ff-pointer other))))

(cl:shadow "=")
(cl:defmethod = ((self bt-matrix3x3) (other bt-matrix3x3))
  (btMatrix3x3___assign__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-column ((self bt-matrix3x3) (i cl:integer))
  (btMatrix3x3_getColumn (ff-pointer self) i))

(cl:defmethod get-row ((self bt-matrix3x3) (i cl:integer))
  (btMatrix3x3_getRow (ff-pointer self) i))

(cl:shadow "[]")
(cl:defmethod [] ((self bt-matrix3x3) (i cl:integer))
  (btMatrix3x3___aref__ (ff-pointer self) i))

(cl:shadow "[]")
(cl:defmethod [] ((self bt-matrix3x3) (i cl:integer))
  (btMatrix3x3___aref__ (ff-pointer self) i))

(cl:shadow "*=")
(cl:defmethod *= ((self bt-matrix3x3) (m bt-matrix3x3))
  (btMatrix3x3___mul_assign__ (ff-pointer self) (ff-pointer m)))

(cl:shadow "+=")
(cl:defmethod += ((self bt-matrix3x3) (m bt-matrix3x3))
  (btMatrix3x3___add_assign__ (ff-pointer self) (ff-pointer m)))

(cl:shadow "-=")
(cl:defmethod -= ((self bt-matrix3x3) (m bt-matrix3x3))
  (btMatrix3x3___sub_assign__ (ff-pointer self) (ff-pointer m)))

(cl:defmethod set-from-open-glsub-matrix ((self bt-matrix3x3) m)
  (btMatrix3x3_setFromOpenGLSubMatrix (ff-pointer self) m))

(cl:defmethod set-value ((self bt-matrix3x3) (xx cl:number) (xy cl:number) (xz cl:number) (yx cl:number) (yy cl:number) (yz cl:number) (zx cl:number) (zy cl:number) (zz cl:number))
  (btMatrix3x3_setValue (ff-pointer self) xx xy xz yx yy yz zx zy zz))

(cl:defmethod set-rotation ((self bt-matrix3x3) (q bt-quaternion))
  (btMatrix3x3_setRotation (ff-pointer self) q))

(cl:defmethod set-euler-ypr ((self bt-matrix3x3) (yaw cl:number) (pitch cl:number) (roll cl:number))
  (btMatrix3x3_setEulerYPR (ff-pointer self) yaw pitch roll))

(cl:defmethod set-euler-zyx ((self bt-matrix3x3) (eulerX cl:number) (eulerY cl:number) (eulerZ cl:number))
  (btMatrix3x3_setEulerZYX (ff-pointer self) eulerX eulerY eulerZ))

(cl:defmethod set-identity ((self bt-matrix3x3))
  (btMatrix3x3_setIdentity (ff-pointer self)))

(cl:defmethod get-open-glsub-matrix ((self bt-matrix3x3) m)
  (btMatrix3x3_getOpenGLSubMatrix (ff-pointer self) m))

(cl:defmethod get-rotation ((self bt-matrix3x3) (q bt-quaternion))
  (btMatrix3x3_getRotation (ff-pointer self) q))

(cl:defmethod get-euler-ypr ((self bt-matrix3x3) yaw pitch roll)
  (btMatrix3x3_getEulerYPR (ff-pointer self) yaw pitch roll))

(cl:defmethod get-euler-zyx ((self bt-matrix3x3) yaw pitch roll (solution_number cl:integer))
  (btMatrix3x3_getEulerZYX (ff-pointer self) yaw pitch roll solution_number))

(cl:defmethod get-euler-zyx ((self bt-matrix3x3) yaw pitch roll)
  (btMatrix3x3_getEulerZYX (ff-pointer self) yaw pitch roll))

(cl:defmethod scaled ((self bt-matrix3x3) (s bt-vector3))
  (btMatrix3x3_scaled (ff-pointer self) s))

(cl:defmethod determinant ((self bt-matrix3x3))
  (btMatrix3x3_determinant (ff-pointer self)))

(cl:defmethod adjoint ((self bt-matrix3x3))
  (btMatrix3x3_adjoint (ff-pointer self)))

(cl:defmethod absolute ((self bt-matrix3x3))
  (btMatrix3x3_absolute (ff-pointer self)))

(cl:defmethod transpose ((self bt-matrix3x3))
  (btMatrix3x3_transpose (ff-pointer self)))

(cl:defmethod inverse ((self bt-matrix3x3))
  (btMatrix3x3_inverse (ff-pointer self)))

(cl:defmethod transpose-times ((self bt-matrix3x3) (m bt-matrix3x3))
  (btMatrix3x3_transposeTimes (ff-pointer self) (ff-pointer m)))

(cl:defmethod times-transpose ((self bt-matrix3x3) (m bt-matrix3x3))
  (btMatrix3x3_timesTranspose (ff-pointer self) (ff-pointer m)))

(cl:defmethod tdotx ((self bt-matrix3x3) (v bt-vector3))
  (btMatrix3x3_tdotx (ff-pointer self) v))

(cl:defmethod tdoty ((self bt-matrix3x3) (v bt-vector3))
  (btMatrix3x3_tdoty (ff-pointer self) v))

(cl:defmethod tdotz ((self bt-matrix3x3) (v bt-vector3))
  (btMatrix3x3_tdotz (ff-pointer self) v))

(cl:defmethod diagonalize ((self bt-matrix3x3) (rot bt-matrix3x3) (threshold cl:number) (maxSteps cl:integer))
  (btMatrix3x3_diagonalize (ff-pointer self) (ff-pointer rot) threshold maxSteps))

(cl:defmethod cofac ((self bt-matrix3x3) (r1 cl:integer) (c1 cl:integer) (r2 cl:integer) (c2 cl:integer))
  (btMatrix3x3_cofac (ff-pointer self) r1 c1 r2 c2))

(cl:defmethod serialize ((self bt-matrix3x3) dataOut)
  (btMatrix3x3_serialize (ff-pointer self) dataOut))

(cl:defmethod serialize-float ((self bt-matrix3x3) dataOut)
  (btMatrix3x3_serializeFloat (ff-pointer self) dataOut))

(cl:defmethod de-serialize ((self bt-matrix3x3) dataIn)
  (btMatrix3x3_deSerialize (ff-pointer self) dataIn))

(cl:defmethod de-serialize-float ((self bt-matrix3x3) dataIn)
  (btMatrix3x3_deSerializeFloat (ff-pointer self) dataIn))

(cl:defmethod de-serialize-double ((self bt-matrix3x3) dataIn)
  (btMatrix3x3_deSerializeDouble (ff-pointer self) dataIn))


(cl:defclass bt-motion-state()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-world-transform ((self bt-motion-state) (worldTrans bt-transform))
  (btMotionState_getWorldTransform (ff-pointer self) worldTrans))

(cl:defmethod set-world-transform ((self bt-motion-state) (worldTrans bt-transform))
  (btMotionState_setWorldTransform (ff-pointer self) worldTrans))


(cl:defclass bt-broadphase-pair-sort-predicate()
  ((ff-pointer :reader ff-pointer)))

(cl:shadow "()")
(cl:defmethod () ((self bt-broadphase-pair-sort-predicate) a b)
  (btBroadphasePairSortPredicate___funcall__ (ff-pointer self) a b))

(cl:defmethod initialize-instance :after ((obj bt-broadphase-pair-sort-predicate) &key)
  (setf (slot-value obj 'ff-pointer) (new_btBroadphasePairSortPredicate)))


(cl:defclass bt-broadphase-interface()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod create-proxy ((self bt-broadphase-interface) (aabbMin bt-vector3) (aabbMax bt-vector3) (shapeType cl:integer) userPtr (collisionFilterGroup cl:integer) (collisionFilterMask cl:integer) dispatcher multiSapProxy)
  (btBroadphaseInterface_createProxy (ff-pointer self) aabbMin aabbMax shapeType userPtr collisionFilterGroup collisionFilterMask dispatcher multiSapProxy))

(cl:defmethod destroy-proxy ((self bt-broadphase-interface) proxy dispatcher)
  (btBroadphaseInterface_destroyProxy (ff-pointer self) proxy dispatcher))

(cl:defmethod set-aabb ((self bt-broadphase-interface) proxy (aabbMin bt-vector3) (aabbMax bt-vector3) dispatcher)
  (btBroadphaseInterface_setAabb (ff-pointer self) proxy aabbMin aabbMax dispatcher))

(cl:defmethod get-aabb ((self bt-broadphase-interface) proxy (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btBroadphaseInterface_getAabb (ff-pointer self) proxy aabbMin aabbMax))

(cl:defmethod ray-test ((self bt-broadphase-interface) (rayFrom bt-vector3) (rayTo bt-vector3) rayCallback (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btBroadphaseInterface_rayTest (ff-pointer self) rayFrom rayTo rayCallback aabbMin aabbMax))

(cl:defmethod ray-test ((self bt-broadphase-interface) (rayFrom bt-vector3) (rayTo bt-vector3) rayCallback (aabbMin bt-vector3))
  (btBroadphaseInterface_rayTest (ff-pointer self) rayFrom rayTo rayCallback aabbMin))

(cl:defmethod ray-test ((self bt-broadphase-interface) (rayFrom bt-vector3) (rayTo bt-vector3) rayCallback)
  (btBroadphaseInterface_rayTest (ff-pointer self) rayFrom rayTo rayCallback))

(cl:defmethod aabb-test ((self bt-broadphase-interface) (aabbMin bt-vector3) (aabbMax bt-vector3) callback)
  (btBroadphaseInterface_aabbTest (ff-pointer self) aabbMin aabbMax callback))

(cl:defmethod calculate-overlapping-pairs ((self bt-broadphase-interface) dispatcher)
  (btBroadphaseInterface_calculateOverlappingPairs (ff-pointer self) dispatcher))

(cl:defmethod get-overlapping-pair-cache ((self bt-broadphase-interface))
  (btBroadphaseInterface_getOverlappingPairCache (ff-pointer self)))

(cl:defmethod get-overlapping-pair-cache ((self bt-broadphase-interface))
  (btBroadphaseInterface_getOverlappingPairCache (ff-pointer self)))

(cl:defmethod get-broadphase-aabb ((self bt-broadphase-interface) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btBroadphaseInterface_getBroadphaseAabb (ff-pointer self) aabbMin aabbMax))

(cl:defmethod reset-pool ((self bt-broadphase-interface) dispatcher)
  (btBroadphaseInterface_resetPool (ff-pointer self) dispatcher))

(cl:defmethod print-stats ((self bt-broadphase-interface))
  (btBroadphaseInterface_printStats (ff-pointer self)))


(cl:defclass bt-dispatcher()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod find-algorithm ((self bt-dispatcher) body0Wrap body1Wrap sharedManifold)
  (btDispatcher_findAlgorithm (ff-pointer self) body0Wrap body1Wrap sharedManifold))

(cl:defmethod find-algorithm ((self bt-dispatcher) body0Wrap body1Wrap)
  (btDispatcher_findAlgorithm (ff-pointer self) body0Wrap body1Wrap))

(cl:defmethod get-new-manifold ((self bt-dispatcher) b0 b1)
  (btDispatcher_getNewManifold (ff-pointer self) b0 b1))

(cl:defmethod release-manifold ((self bt-dispatcher) manifold)
  (btDispatcher_releaseManifold (ff-pointer self) manifold))

(cl:defmethod clear-manifold ((self bt-dispatcher) manifold)
  (btDispatcher_clearManifold (ff-pointer self) manifold))

(cl:defmethod needs-collision ((self bt-dispatcher) body0 body1)
  (btDispatcher_needsCollision (ff-pointer self) body0 body1))

(cl:defmethod needs-response ((self bt-dispatcher) body0 body1)
  (btDispatcher_needsResponse (ff-pointer self) body0 body1))

(cl:defmethod dispatch-all-collision-pairs ((self bt-dispatcher) pairCache dispatchInfo (dispatcher bt-dispatcher))
  (btDispatcher_dispatchAllCollisionPairs (ff-pointer self) pairCache dispatchInfo (ff-pointer dispatcher)))

(cl:defmethod get-num-manifolds ((self bt-dispatcher))
  (btDispatcher_getNumManifolds (ff-pointer self)))

(cl:defmethod get-manifold-by-index-internal ((self bt-dispatcher) (index cl:integer))
  (btDispatcher_getManifoldByIndexInternal (ff-pointer self) index))

(cl:defmethod get-internal-manifold-pointer ((self bt-dispatcher))
  (btDispatcher_getInternalManifoldPointer (ff-pointer self)))

(cl:defmethod get-internal-manifold-pool ((self bt-dispatcher))
  (btDispatcher_getInternalManifoldPool (ff-pointer self)))

(cl:defmethod get-internal-manifold-pool ((self bt-dispatcher))
  (btDispatcher_getInternalManifoldPool (ff-pointer self)))

(cl:defmethod allocate-collision-algorithm ((self bt-dispatcher) (size cl:integer))
  (btDispatcher_allocateCollisionAlgorithm (ff-pointer self) size))

(cl:defmethod free-collision-algorithm ((self bt-dispatcher) ptr)
  (btDispatcher_freeCollisionAlgorithm (ff-pointer self) ptr))


(cl:defclass bt-collision-configuration()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-persistent-manifold-pool ((self bt-collision-configuration))
  (btCollisionConfiguration_getPersistentManifoldPool (ff-pointer self)))

(cl:defmethod get-collision-algorithm-pool ((self bt-collision-configuration))
  (btCollisionConfiguration_getCollisionAlgorithmPool (ff-pointer self)))

(cl:defmethod get-collision-algorithm-create-func ((self bt-collision-configuration) (proxyType0 cl:integer) (proxyType1 cl:integer))
  (btCollisionConfiguration_getCollisionAlgorithmCreateFunc (ff-pointer self) proxyType0 proxyType1))


(cl:defclass bt-default-collision-configuration(btCollisionConfiguration)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-default-collision-configuration) &key constructionInfo)
  (setf (slot-value obj 'ff-pointer) (new_btDefaultCollisionConfiguration constructionInfo)))

(cl:defmethod initialize-instance :after ((obj bt-default-collision-configuration) &key)
  (setf (slot-value obj 'ff-pointer) (new_btDefaultCollisionConfiguration)))

(cl:defmethod get-persistent-manifold-pool ((self bt-default-collision-configuration))
  (btDefaultCollisionConfiguration_getPersistentManifoldPool (ff-pointer self)))

(cl:defmethod get-collision-algorithm-pool ((self bt-default-collision-configuration))
  (btDefaultCollisionConfiguration_getCollisionAlgorithmPool (ff-pointer self)))

(cl:defmethod get-simplex-solver ((self bt-default-collision-configuration))
  (btDefaultCollisionConfiguration_getSimplexSolver (ff-pointer self)))

(cl:defmethod get-collision-algorithm-create-func ((self bt-default-collision-configuration) (proxyType0 cl:integer) (proxyType1 cl:integer))
  (btDefaultCollisionConfiguration_getCollisionAlgorithmCreateFunc (ff-pointer self) proxyType0 proxyType1))

(cl:defmethod set-convex-convex-multipoint-iterations ((self bt-default-collision-configuration) (numPerturbationIterations cl:integer) (minimumPointsPerturbationThreshold cl:integer))
  (btDefaultCollisionConfiguration_setConvexConvexMultipointIterations (ff-pointer self) numPerturbationIterations minimumPointsPerturbationThreshold))

(cl:defmethod set-convex-convex-multipoint-iterations ((self bt-default-collision-configuration) (numPerturbationIterations cl:integer))
  (btDefaultCollisionConfiguration_setConvexConvexMultipointIterations (ff-pointer self) numPerturbationIterations))

(cl:defmethod set-convex-convex-multipoint-iterations ((self bt-default-collision-configuration))
  (btDefaultCollisionConfiguration_setConvexConvexMultipointIterations (ff-pointer self)))

(cl:defmethod set-plane-convex-multipoint-iterations ((self bt-default-collision-configuration) (numPerturbationIterations cl:integer) (minimumPointsPerturbationThreshold cl:integer))
  (btDefaultCollisionConfiguration_setPlaneConvexMultipointIterations (ff-pointer self) numPerturbationIterations minimumPointsPerturbationThreshold))

(cl:defmethod set-plane-convex-multipoint-iterations ((self bt-default-collision-configuration) (numPerturbationIterations cl:integer))
  (btDefaultCollisionConfiguration_setPlaneConvexMultipointIterations (ff-pointer self) numPerturbationIterations))

(cl:defmethod set-plane-convex-multipoint-iterations ((self bt-default-collision-configuration))
  (btDefaultCollisionConfiguration_setPlaneConvexMultipointIterations (ff-pointer self)))


(cl:defclass bt-collision-dispatcher(btDispatcher)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-dispatcher-flags ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getDispatcherFlags (ff-pointer self)))

(cl:defmethod set-dispatcher-flags ((self bt-collision-dispatcher) (flags cl:integer))
  (btCollisionDispatcher_setDispatcherFlags (ff-pointer self) flags))

(cl:defmethod register-collision-create-func ((self bt-collision-dispatcher) (proxyType0 cl:integer) (proxyType1 cl:integer) createFunc)
  (btCollisionDispatcher_registerCollisionCreateFunc (ff-pointer self) proxyType0 proxyType1 createFunc))

(cl:defmethod get-num-manifolds ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getNumManifolds (ff-pointer self)))

(cl:defmethod get-internal-manifold-pointer ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getInternalManifoldPointer (ff-pointer self)))

(cl:defmethod get-manifold-by-index-internal ((self bt-collision-dispatcher) (index cl:integer))
  (btCollisionDispatcher_getManifoldByIndexInternal (ff-pointer self) index))

(cl:defmethod get-manifold-by-index-internal ((self bt-collision-dispatcher) (index cl:integer))
  (btCollisionDispatcher_getManifoldByIndexInternal (ff-pointer self) index))

(cl:defmethod initialize-instance :after ((obj bt-collision-dispatcher) &key (collisionConfiguration bt-collision-configuration))
  (setf (slot-value obj 'ff-pointer) (new_btCollisionDispatcher collisionConfiguration)))

(cl:defmethod get-new-manifold ((self bt-collision-dispatcher) b0 b1)
  (btCollisionDispatcher_getNewManifold (ff-pointer self) b0 b1))

(cl:defmethod release-manifold ((self bt-collision-dispatcher) manifold)
  (btCollisionDispatcher_releaseManifold (ff-pointer self) manifold))

(cl:defmethod clear-manifold ((self bt-collision-dispatcher) manifold)
  (btCollisionDispatcher_clearManifold (ff-pointer self) manifold))

(cl:defmethod find-algorithm ((self bt-collision-dispatcher) body0Wrap body1Wrap sharedManifold)
  (btCollisionDispatcher_findAlgorithm (ff-pointer self) body0Wrap body1Wrap sharedManifold))

(cl:defmethod find-algorithm ((self bt-collision-dispatcher) body0Wrap body1Wrap)
  (btCollisionDispatcher_findAlgorithm (ff-pointer self) body0Wrap body1Wrap))

(cl:defmethod needs-collision ((self bt-collision-dispatcher) body0 body1)
  (btCollisionDispatcher_needsCollision (ff-pointer self) body0 body1))

(cl:defmethod needs-response ((self bt-collision-dispatcher) body0 body1)
  (btCollisionDispatcher_needsResponse (ff-pointer self) body0 body1))

(cl:defmethod dispatch-all-collision-pairs ((self bt-collision-dispatcher) pairCache dispatchInfo (dispatcher bt-dispatcher))
  (btCollisionDispatcher_dispatchAllCollisionPairs (ff-pointer self) pairCache dispatchInfo dispatcher))

(cl:defmethod set-near-callback ((self bt-collision-dispatcher) nearCallback)
  (btCollisionDispatcher_setNearCallback (ff-pointer self) nearCallback))

(cl:defmethod get-near-callback ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getNearCallback (ff-pointer self)))

(cl:defmethod allocate-collision-algorithm ((self bt-collision-dispatcher) (size cl:integer))
  (btCollisionDispatcher_allocateCollisionAlgorithm (ff-pointer self) size))

(cl:defmethod free-collision-algorithm ((self bt-collision-dispatcher) ptr)
  (btCollisionDispatcher_freeCollisionAlgorithm (ff-pointer self) ptr))

(cl:defmethod get-collision-configuration ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getCollisionConfiguration (ff-pointer self)))

(cl:defmethod get-collision-configuration ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getCollisionConfiguration (ff-pointer self)))

(cl:defmethod set-collision-configuration ((self bt-collision-dispatcher) (config bt-collision-configuration))
  (btCollisionDispatcher_setCollisionConfiguration (ff-pointer self) config))

(cl:defmethod get-internal-manifold-pool ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getInternalManifoldPool (ff-pointer self)))

(cl:defmethod get-internal-manifold-pool ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getInternalManifoldPool (ff-pointer self)))


(cl:defclass bt-collision-object()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod merges-simulation-islands ((self bt-collision-object))
  (btCollisionObject_mergesSimulationIslands (ff-pointer self)))

(cl:defmethod get-anisotropic-friction ((self bt-collision-object))
  (btCollisionObject_getAnisotropicFriction (ff-pointer self)))

(cl:defmethod set-anisotropic-friction ((self bt-collision-object) (anisotropicFriction bt-vector3) (frictionMode cl:integer))
  (btCollisionObject_setAnisotropicFriction (ff-pointer self) anisotropicFriction frictionMode))

(cl:defmethod set-anisotropic-friction ((self bt-collision-object) (anisotropicFriction bt-vector3))
  (btCollisionObject_setAnisotropicFriction (ff-pointer self) anisotropicFriction))

(cl:defmethod has-anisotropic-friction ((self bt-collision-object) (frictionMode cl:integer))
  (btCollisionObject_hasAnisotropicFriction (ff-pointer self) frictionMode))

(cl:defmethod has-anisotropic-friction ((self bt-collision-object))
  (btCollisionObject_hasAnisotropicFriction (ff-pointer self)))

(cl:defmethod set-contact-processing-threshold ((self bt-collision-object) (contactProcessingThreshold cl:number))
  (btCollisionObject_setContactProcessingThreshold (ff-pointer self) contactProcessingThreshold))

(cl:defmethod get-contact-processing-threshold ((self bt-collision-object))
  (btCollisionObject_getContactProcessingThreshold (ff-pointer self)))

(cl:defmethod is-static-object ((self bt-collision-object))
  (btCollisionObject_isStaticObject (ff-pointer self)))

(cl:defmethod is-kinematic-object ((self bt-collision-object))
  (btCollisionObject_isKinematicObject (ff-pointer self)))

(cl:defmethod is-static-or-kinematic-object ((self bt-collision-object))
  (btCollisionObject_isStaticOrKinematicObject (ff-pointer self)))

(cl:defmethod has-contact-response ((self bt-collision-object))
  (btCollisionObject_hasContactResponse (ff-pointer self)))

(cl:defmethod initialize-instance :after ((obj bt-collision-object) &key)
  (setf (slot-value obj 'ff-pointer) (new_btCollisionObject)))

(cl:defmethod set-collision-shape ((self bt-collision-object) collisionShape)
  (btCollisionObject_setCollisionShape (ff-pointer self) collisionShape))

(cl:defmethod get-collision-shape ((self bt-collision-object))
  (btCollisionObject_getCollisionShape (ff-pointer self)))

(cl:defmethod get-collision-shape ((self bt-collision-object))
  (btCollisionObject_getCollisionShape (ff-pointer self)))

(cl:defmethod internal-get-extension-pointer ((self bt-collision-object))
  (btCollisionObject_internalGetExtensionPointer (ff-pointer self)))

(cl:defmethod internal-set-extension-pointer ((self bt-collision-object) pointer)
  (btCollisionObject_internalSetExtensionPointer (ff-pointer self) pointer))

(cl:defmethod get-activation-state ((self bt-collision-object))
  (btCollisionObject_getActivationState (ff-pointer self)))

(cl:defmethod set-activation-state ((self bt-collision-object) (newState cl:integer))
  (btCollisionObject_setActivationState (ff-pointer self) newState))

(cl:defmethod set-deactivation-time ((self bt-collision-object) (time cl:number))
  (btCollisionObject_setDeactivationTime (ff-pointer self) time))

(cl:defmethod get-deactivation-time ((self bt-collision-object))
  (btCollisionObject_getDeactivationTime (ff-pointer self)))

(cl:defmethod force-activation-state ((self bt-collision-object) (newState cl:integer))
  (btCollisionObject_forceActivationState (ff-pointer self) newState))

(cl:defmethod activate ((self bt-collision-object) (forceActivation t))
  (btCollisionObject_activate (ff-pointer self) forceActivation))

(cl:defmethod activate ((self bt-collision-object))
  (btCollisionObject_activate (ff-pointer self)))

(cl:defmethod is-active ((self bt-collision-object))
  (btCollisionObject_isActive (ff-pointer self)))

(cl:defmethod set-restitution ((self bt-collision-object) (rest cl:number))
  (btCollisionObject_setRestitution (ff-pointer self) rest))

(cl:defmethod get-restitution ((self bt-collision-object))
  (btCollisionObject_getRestitution (ff-pointer self)))

(cl:defmethod set-friction ((self bt-collision-object) (frict cl:number))
  (btCollisionObject_setFriction (ff-pointer self) frict))

(cl:defmethod get-friction ((self bt-collision-object))
  (btCollisionObject_getFriction (ff-pointer self)))

(cl:defmethod set-rolling-friction ((self bt-collision-object) (frict cl:number))
  (btCollisionObject_setRollingFriction (ff-pointer self) frict))

(cl:defmethod get-rolling-friction ((self bt-collision-object))
  (btCollisionObject_getRollingFriction (ff-pointer self)))

(cl:defmethod get-internal-type ((self bt-collision-object))
  (btCollisionObject_getInternalType (ff-pointer self)))

(cl:defmethod get-world-transform ((self bt-collision-object))
  (btCollisionObject_getWorldTransform (ff-pointer self)))

(cl:defmethod get-world-transform ((self bt-collision-object))
  (btCollisionObject_getWorldTransform (ff-pointer self)))

(cl:defmethod set-world-transform ((self bt-collision-object) (worldTrans bt-transform))
  (btCollisionObject_setWorldTransform (ff-pointer self) worldTrans))

(cl:defmethod get-broadphase-handle ((self bt-collision-object))
  (btCollisionObject_getBroadphaseHandle (ff-pointer self)))

(cl:defmethod get-broadphase-handle ((self bt-collision-object))
  (btCollisionObject_getBroadphaseHandle (ff-pointer self)))

(cl:defmethod set-broadphase-handle ((self bt-collision-object) handle)
  (btCollisionObject_setBroadphaseHandle (ff-pointer self) handle))

(cl:defmethod get-interpolation-world-transform ((self bt-collision-object))
  (btCollisionObject_getInterpolationWorldTransform (ff-pointer self)))

(cl:defmethod get-interpolation-world-transform ((self bt-collision-object))
  (btCollisionObject_getInterpolationWorldTransform (ff-pointer self)))

(cl:defmethod set-interpolation-world-transform ((self bt-collision-object) (trans bt-transform))
  (btCollisionObject_setInterpolationWorldTransform (ff-pointer self) trans))

(cl:defmethod set-interpolation-linear-velocity ((self bt-collision-object) (linvel bt-vector3))
  (btCollisionObject_setInterpolationLinearVelocity (ff-pointer self) linvel))

(cl:defmethod set-interpolation-angular-velocity ((self bt-collision-object) (angvel bt-vector3))
  (btCollisionObject_setInterpolationAngularVelocity (ff-pointer self) angvel))

(cl:defmethod get-interpolation-linear-velocity ((self bt-collision-object))
  (btCollisionObject_getInterpolationLinearVelocity (ff-pointer self)))

(cl:defmethod get-interpolation-angular-velocity ((self bt-collision-object))
  (btCollisionObject_getInterpolationAngularVelocity (ff-pointer self)))

(cl:defmethod get-island-tag ((self bt-collision-object))
  (btCollisionObject_getIslandTag (ff-pointer self)))

(cl:defmethod set-island-tag ((self bt-collision-object) (tag cl:integer))
  (btCollisionObject_setIslandTag (ff-pointer self) tag))

(cl:defmethod get-companion-id ((self bt-collision-object))
  (btCollisionObject_getCompanionId (ff-pointer self)))

(cl:defmethod set-companion-id ((self bt-collision-object) (id cl:integer))
  (btCollisionObject_setCompanionId (ff-pointer self) id))

(cl:defmethod get-hit-fraction ((self bt-collision-object))
  (btCollisionObject_getHitFraction (ff-pointer self)))

(cl:defmethod set-hit-fraction ((self bt-collision-object) (hitFraction cl:number))
  (btCollisionObject_setHitFraction (ff-pointer self) hitFraction))

(cl:defmethod get-collision-flags ((self bt-collision-object))
  (btCollisionObject_getCollisionFlags (ff-pointer self)))

(cl:defmethod set-collision-flags ((self bt-collision-object) (flags cl:integer))
  (btCollisionObject_setCollisionFlags (ff-pointer self) flags))

(cl:defmethod get-ccd-swept-sphere-radius ((self bt-collision-object))
  (btCollisionObject_getCcdSweptSphereRadius (ff-pointer self)))

(cl:defmethod set-ccd-swept-sphere-radius ((self bt-collision-object) (radius cl:number))
  (btCollisionObject_setCcdSweptSphereRadius (ff-pointer self) radius))

(cl:defmethod get-ccd-motion-threshold ((self bt-collision-object))
  (btCollisionObject_getCcdMotionThreshold (ff-pointer self)))

(cl:defmethod get-ccd-square-motion-threshold ((self bt-collision-object))
  (btCollisionObject_getCcdSquareMotionThreshold (ff-pointer self)))

(cl:defmethod set-ccd-motion-threshold ((self bt-collision-object) (ccdMotionThreshold cl:number))
  (btCollisionObject_setCcdMotionThreshold (ff-pointer self) ccdMotionThreshold))

(cl:defmethod get-user-pointer ((self bt-collision-object))
  (btCollisionObject_getUserPointer (ff-pointer self)))

(cl:defmethod get-user-index ((self bt-collision-object))
  (btCollisionObject_getUserIndex (ff-pointer self)))

(cl:defmethod set-user-pointer ((self bt-collision-object) userPointer)
  (btCollisionObject_setUserPointer (ff-pointer self) userPointer))

(cl:defmethod set-user-index ((self bt-collision-object) (index cl:integer))
  (btCollisionObject_setUserIndex (ff-pointer self) index))

(cl:defmethod get-update-revision-internal ((self bt-collision-object))
  (btCollisionObject_getUpdateRevisionInternal (ff-pointer self)))

(cl:defmethod check-collide-with ((self bt-collision-object) (co bt-collision-object))
  (btCollisionObject_checkCollideWith (ff-pointer self) (ff-pointer co)))

(cl:defmethod calculate-serialize-buffer-size ((self bt-collision-object))
  (btCollisionObject_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-collision-object) dataBuffer serializer)
  (btCollisionObject_serialize (ff-pointer self) dataBuffer serializer))

(cl:defmethod serialize-single-object ((self bt-collision-object) serializer)
  (btCollisionObject_serializeSingleObject (ff-pointer self) serializer))


(cl:defclass bt-collision-world()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-collision-world) &key (dispatcher bt-dispatcher) (broadphasePairCache bt-broadphase-interface) (collisionConfiguration bt-collision-configuration))
  (setf (slot-value obj 'ff-pointer) (new_btCollisionWorld dispatcher broadphasePairCache collisionConfiguration)))

(cl:defmethod set-broadphase ((self bt-collision-world) (pairCache bt-broadphase-interface))
  (btCollisionWorld_setBroadphase (ff-pointer self) pairCache))

(cl:defmethod get-broadphase ((self bt-collision-world))
  (btCollisionWorld_getBroadphase (ff-pointer self)))

(cl:defmethod get-broadphase ((self bt-collision-world))
  (btCollisionWorld_getBroadphase (ff-pointer self)))

(cl:defmethod get-pair-cache ((self bt-collision-world))
  (btCollisionWorld_getPairCache (ff-pointer self)))

(cl:defmethod get-dispatcher ((self bt-collision-world))
  (btCollisionWorld_getDispatcher (ff-pointer self)))

(cl:defmethod get-dispatcher ((self bt-collision-world))
  (btCollisionWorld_getDispatcher (ff-pointer self)))

(cl:defmethod update-single-aabb ((self bt-collision-world) (colObj bt-collision-object))
  (btCollisionWorld_updateSingleAabb (ff-pointer self) colObj))

(cl:defmethod update-aabbs ((self bt-collision-world))
  (btCollisionWorld_updateAabbs (ff-pointer self)))

(cl:defmethod compute-overlapping-pairs ((self bt-collision-world))
  (btCollisionWorld_computeOverlappingPairs (ff-pointer self)))

(cl:defmethod set-debug-drawer ((self bt-collision-world) debugDrawer)
  (btCollisionWorld_setDebugDrawer (ff-pointer self) debugDrawer))

(cl:defmethod get-debug-drawer ((self bt-collision-world))
  (btCollisionWorld_getDebugDrawer (ff-pointer self)))

(cl:defmethod debug-draw-world ((self bt-collision-world))
  (btCollisionWorld_debugDrawWorld (ff-pointer self)))

(cl:defmethod debug-draw-object ((self bt-collision-world) (worldTransform bt-transform) shape (color bt-vector3))
  (btCollisionWorld_debugDrawObject (ff-pointer self) worldTransform shape color))

(cl:defmethod get-num-collision-objects ((self bt-collision-world))
  (btCollisionWorld_getNumCollisionObjects (ff-pointer self)))

(cl:defmethod ray-test ((self bt-collision-world) (rayFromWorld bt-vector3) (rayToWorld bt-vector3) resultCallback)
  (btCollisionWorld_rayTest (ff-pointer self) rayFromWorld rayToWorld resultCallback))

(cl:defmethod convex-sweep-test ((self bt-collision-world) castShape (from bt-transform) (to bt-transform) resultCallback (allowedCcdPenetration cl:number))
  (btCollisionWorld_convexSweepTest (ff-pointer self) castShape from to resultCallback allowedCcdPenetration))

(cl:defmethod convex-sweep-test ((self bt-collision-world) castShape (from bt-transform) (to bt-transform) resultCallback)
  (btCollisionWorld_convexSweepTest (ff-pointer self) castShape from to resultCallback))

(cl:defmethod contact-test ((self bt-collision-world) (colObj bt-collision-object) resultCallback)
  (btCollisionWorld_contactTest (ff-pointer self) colObj resultCallback))

(cl:defmethod contact-pair-test ((self bt-collision-world) (colObjA bt-collision-object) (colObjB bt-collision-object) resultCallback)
  (btCollisionWorld_contactPairTest (ff-pointer self) colObjA colObjB resultCallback))

(cl:defmethod add-collision-object ((self bt-collision-world) (collisionObject bt-collision-object) (collisionFilterGroup cl:integer) (collisionFilterMask cl:integer))
  (btCollisionWorld_addCollisionObject (ff-pointer self) collisionObject collisionFilterGroup collisionFilterMask))

(cl:defmethod add-collision-object ((self bt-collision-world) (collisionObject bt-collision-object) (collisionFilterGroup cl:integer))
  (btCollisionWorld_addCollisionObject (ff-pointer self) collisionObject collisionFilterGroup))

(cl:defmethod add-collision-object ((self bt-collision-world) (collisionObject bt-collision-object))
  (btCollisionWorld_addCollisionObject (ff-pointer self) collisionObject))

(cl:defmethod get-collision-object-array ((self bt-collision-world))
  (btCollisionWorld_getCollisionObjectArray (ff-pointer self)))

(cl:defmethod get-collision-object-array ((self bt-collision-world))
  (btCollisionWorld_getCollisionObjectArray (ff-pointer self)))

(cl:defmethod remove-collision-object ((self bt-collision-world) (collisionObject bt-collision-object))
  (btCollisionWorld_removeCollisionObject (ff-pointer self) collisionObject))

(cl:defmethod perform-discrete-collision-detection ((self bt-collision-world))
  (btCollisionWorld_performDiscreteCollisionDetection (ff-pointer self)))

(cl:defmethod get-dispatch-info ((self bt-collision-world))
  (btCollisionWorld_getDispatchInfo (ff-pointer self)))

(cl:defmethod get-dispatch-info ((self bt-collision-world))
  (btCollisionWorld_getDispatchInfo (ff-pointer self)))

(cl:defmethod get-force-update-all-aabbs ((self bt-collision-world))
  (btCollisionWorld_getForceUpdateAllAabbs (ff-pointer self)))

(cl:defmethod set-force-update-all-aabbs ((self bt-collision-world) (forceUpdateAllAabbs t))
  (btCollisionWorld_setForceUpdateAllAabbs (ff-pointer self) forceUpdateAllAabbs))

(cl:defmethod serialize ((self bt-collision-world) serializer)
  (btCollisionWorld_serialize (ff-pointer self) serializer))


(cl:defclass bt-collision-shape()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-aabb ((self bt-collision-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btCollisionShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod get-bounding-sphere ((self bt-collision-shape) (center bt-vector3) radius)
  (btCollisionShape_getBoundingSphere (ff-pointer self) center radius))

(cl:defmethod get-angular-motion-disc ((self bt-collision-shape))
  (btCollisionShape_getAngularMotionDisc (ff-pointer self)))

(cl:defmethod get-contact-breaking-threshold ((self bt-collision-shape) (defaultContactThresholdFactor cl:number))
  (btCollisionShape_getContactBreakingThreshold (ff-pointer self) defaultContactThresholdFactor))

(cl:defmethod calculate-temporal-aabb ((self bt-collision-shape) (curTrans bt-transform) (linvel bt-vector3) (angvel bt-vector3) (timeStep cl:number) (temporalAabbMin bt-vector3) (temporalAabbMax bt-vector3))
  (btCollisionShape_calculateTemporalAabb (ff-pointer self) curTrans linvel angvel timeStep temporalAabbMin temporalAabbMax))

(cl:defmethod is-polyhedral ((self bt-collision-shape))
  (btCollisionShape_isPolyhedral (ff-pointer self)))

(cl:defmethod is-convex2d ((self bt-collision-shape))
  (btCollisionShape_isConvex2d (ff-pointer self)))

(cl:defmethod is-convex ((self bt-collision-shape))
  (btCollisionShape_isConvex (ff-pointer self)))

(cl:defmethod is-non-moving ((self bt-collision-shape))
  (btCollisionShape_isNonMoving (ff-pointer self)))

(cl:defmethod is-concave ((self bt-collision-shape))
  (btCollisionShape_isConcave (ff-pointer self)))

(cl:defmethod is-compound ((self bt-collision-shape))
  (btCollisionShape_isCompound (ff-pointer self)))

(cl:defmethod is-soft-body ((self bt-collision-shape))
  (btCollisionShape_isSoftBody (ff-pointer self)))

(cl:defmethod is-infinite ((self bt-collision-shape))
  (btCollisionShape_isInfinite (ff-pointer self)))

(cl:defmethod set-local-scaling ((self bt-collision-shape) (scaling bt-vector3))
  (btCollisionShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-local-scaling ((self bt-collision-shape))
  (btCollisionShape_getLocalScaling (ff-pointer self)))

(cl:defmethod calculate-local-inertia ((self bt-collision-shape) (mass cl:number) (inertia bt-vector3))
  (btCollisionShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod get-name ((self bt-collision-shape))
  (btCollisionShape_getName (ff-pointer self)))

(cl:defmethod get-shape-type ((self bt-collision-shape))
  (btCollisionShape_getShapeType (ff-pointer self)))

(cl:defmethod get-anisotropic-rolling-friction-direction ((self bt-collision-shape))
  (btCollisionShape_getAnisotropicRollingFrictionDirection (ff-pointer self)))

(cl:defmethod set-margin ((self bt-collision-shape) (margin cl:number))
  (btCollisionShape_setMargin (ff-pointer self) margin))

(cl:defmethod get-margin ((self bt-collision-shape))
  (btCollisionShape_getMargin (ff-pointer self)))

(cl:defmethod set-user-pointer ((self bt-collision-shape) userPtr)
  (btCollisionShape_setUserPointer (ff-pointer self) userPtr))

(cl:defmethod get-user-pointer ((self bt-collision-shape))
  (btCollisionShape_getUserPointer (ff-pointer self)))

(cl:defmethod calculate-serialize-buffer-size ((self bt-collision-shape))
  (btCollisionShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-collision-shape) dataBuffer serializer)
  (btCollisionShape_serialize (ff-pointer self) dataBuffer serializer))

(cl:defmethod serialize-single-shape ((self bt-collision-shape) serializer)
  (btCollisionShape_serializeSingleShape (ff-pointer self) serializer))


(cl:defclass bt-convex-shape(btCollisionShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod local-get-supporting-vertex ((self bt-convex-shape) (vec bt-vector3))
  (btConvexShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-convex-shape) (vec bt-vector3))
  (btConvexShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod local-get-support-vertex-without-margin-non-virtual ((self bt-convex-shape) (vec bt-vector3))
  (btConvexShape_localGetSupportVertexWithoutMarginNonVirtual (ff-pointer self) vec))

(cl:defmethod local-get-support-vertex-non-virtual ((self bt-convex-shape) (vec bt-vector3))
  (btConvexShape_localGetSupportVertexNonVirtual (ff-pointer self) vec))

(cl:defmethod get-margin-non-virtual ((self bt-convex-shape))
  (btConvexShape_getMarginNonVirtual (ff-pointer self)))

(cl:defmethod get-aabb-non-virtual ((self bt-convex-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btConvexShape_getAabbNonVirtual (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod project ((self bt-convex-shape) (trans bt-transform) (dir bt-vector3) min max)
  (btConvexShape_project (ff-pointer self) trans dir min max))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-convex-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btConvexShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod get-aabb ((self bt-convex-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btConvexShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod get-aabb-slow ((self bt-convex-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btConvexShape_getAabbSlow (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod set-local-scaling ((self bt-convex-shape) (scaling bt-vector3))
  (btConvexShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-local-scaling ((self bt-convex-shape))
  (btConvexShape_getLocalScaling (ff-pointer self)))

(cl:defmethod set-margin ((self bt-convex-shape) (margin cl:number))
  (btConvexShape_setMargin (ff-pointer self) margin))

(cl:defmethod get-margin ((self bt-convex-shape))
  (btConvexShape_getMargin (ff-pointer self)))

(cl:defmethod get-num-preferred-penetration-directions ((self bt-convex-shape))
  (btConvexShape_getNumPreferredPenetrationDirections (ff-pointer self)))

(cl:defmethod get-preferred-penetration-direction ((self bt-convex-shape) (index cl:integer) (penetrationVector bt-vector3))
  (btConvexShape_getPreferredPenetrationDirection (ff-pointer self) index penetrationVector))


(cl:defclass bt-convex-internal-shape(btConvexShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod local-get-supporting-vertex ((self bt-convex-internal-shape) (vec bt-vector3))
  (btConvexInternalShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod get-implicit-shape-dimensions ((self bt-convex-internal-shape))
  (btConvexInternalShape_getImplicitShapeDimensions (ff-pointer self)))

(cl:defmethod set-implicit-shape-dimensions ((self bt-convex-internal-shape) (dimensions bt-vector3))
  (btConvexInternalShape_setImplicitShapeDimensions (ff-pointer self) dimensions))

(cl:defmethod set-safe-margin ((self bt-convex-internal-shape) (minDimension cl:number) (defaultMarginMultiplier cl:number))
  (btConvexInternalShape_setSafeMargin (ff-pointer self) minDimension defaultMarginMultiplier))

(cl:defmethod set-safe-margin ((self bt-convex-internal-shape) (minDimension cl:number))
  (btConvexInternalShape_setSafeMargin (ff-pointer self) minDimension))

(cl:defmethod set-safe-margin ((self bt-convex-internal-shape) (halfExtents bt-vector3) (defaultMarginMultiplier cl:number))
  (btConvexInternalShape_setSafeMargin (ff-pointer self) halfExtents defaultMarginMultiplier))

(cl:defmethod set-safe-margin ((self bt-convex-internal-shape) (halfExtents bt-vector3))
  (btConvexInternalShape_setSafeMargin (ff-pointer self) halfExtents))

(cl:defmethod get-aabb ((self bt-convex-internal-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btConvexInternalShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod get-aabb-slow ((self bt-convex-internal-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btConvexInternalShape_getAabbSlow (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod set-local-scaling ((self bt-convex-internal-shape) (scaling bt-vector3))
  (btConvexInternalShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-local-scaling ((self bt-convex-internal-shape))
  (btConvexInternalShape_getLocalScaling (ff-pointer self)))

(cl:defmethod get-local-scaling-nv ((self bt-convex-internal-shape))
  (btConvexInternalShape_getLocalScalingNV (ff-pointer self)))

(cl:defmethod set-margin ((self bt-convex-internal-shape) (margin cl:number))
  (btConvexInternalShape_setMargin (ff-pointer self) margin))

(cl:defmethod get-margin ((self bt-convex-internal-shape))
  (btConvexInternalShape_getMargin (ff-pointer self)))

(cl:defmethod get-margin-nv ((self bt-convex-internal-shape))
  (btConvexInternalShape_getMarginNV (ff-pointer self)))

(cl:defmethod get-num-preferred-penetration-directions ((self bt-convex-internal-shape))
  (btConvexInternalShape_getNumPreferredPenetrationDirections (ff-pointer self)))

(cl:defmethod get-preferred-penetration-direction ((self bt-convex-internal-shape) (index cl:integer) (penetrationVector bt-vector3))
  (btConvexInternalShape_getPreferredPenetrationDirection (ff-pointer self) index penetrationVector))

(cl:defmethod calculate-serialize-buffer-size ((self bt-convex-internal-shape))
  (btConvexInternalShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-convex-internal-shape) dataBuffer serializer)
  (btConvexInternalShape_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-convex-internal-aabb-caching-shape(btConvexInternalShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-local-scaling ((self bt-convex-internal-aabb-caching-shape) (scaling bt-vector3))
  (btConvexInternalAabbCachingShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-aabb ((self bt-convex-internal-aabb-caching-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btConvexInternalAabbCachingShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod recalc-local-aabb ((self bt-convex-internal-aabb-caching-shape))
  (btConvexInternalAabbCachingShape_recalcLocalAabb (ff-pointer self)))


(cl:defclass bt-polyhedral-convex-shape(btConvexInternalShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-polyhedral-features ((self bt-polyhedral-convex-shape) (shiftVerticesByMargin cl:integer))
  (btPolyhedralConvexShape_initializePolyhedralFeatures (ff-pointer self) shiftVerticesByMargin))

(cl:defmethod initialize-polyhedral-features ((self bt-polyhedral-convex-shape))
  (btPolyhedralConvexShape_initializePolyhedralFeatures (ff-pointer self)))

(cl:defmethod get-convex-polyhedron ((self bt-polyhedral-convex-shape))
  (btPolyhedralConvexShape_getConvexPolyhedron (ff-pointer self)))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-polyhedral-convex-shape) (vec bt-vector3))
  (btPolyhedralConvexShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-polyhedral-convex-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btPolyhedralConvexShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod calculate-local-inertia ((self bt-polyhedral-convex-shape) (mass cl:number) (inertia bt-vector3))
  (btPolyhedralConvexShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod get-num-vertices ((self bt-polyhedral-convex-shape))
  (btPolyhedralConvexShape_getNumVertices (ff-pointer self)))

(cl:defmethod get-num-edges ((self bt-polyhedral-convex-shape))
  (btPolyhedralConvexShape_getNumEdges (ff-pointer self)))

(cl:defmethod get-edge ((self bt-polyhedral-convex-shape) (i cl:integer) (pa bt-vector3) (pb bt-vector3))
  (btPolyhedralConvexShape_getEdge (ff-pointer self) i pa pb))

(cl:defmethod get-vertex ((self bt-polyhedral-convex-shape) (i cl:integer) (vtx bt-vector3))
  (btPolyhedralConvexShape_getVertex (ff-pointer self) i vtx))

(cl:defmethod get-num-planes ((self bt-polyhedral-convex-shape))
  (btPolyhedralConvexShape_getNumPlanes (ff-pointer self)))

(cl:defmethod get-plane ((self bt-polyhedral-convex-shape) (planeNormal bt-vector3) (planeSupport bt-vector3) (i cl:integer))
  (btPolyhedralConvexShape_getPlane (ff-pointer self) planeNormal planeSupport i))

(cl:defmethod is-inside ((self bt-polyhedral-convex-shape) (pt bt-vector3) (tolerance cl:number))
  (btPolyhedralConvexShape_isInside (ff-pointer self) pt tolerance))


(cl:defclass bt-polyhedral-convex-aabb-caching-shape(btPolyhedralConvexShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-nonvirtual-aabb ((self bt-polyhedral-convex-aabb-caching-shape) (trans bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3) (margin cl:number))
  (btPolyhedralConvexAabbCachingShape_getNonvirtualAabb (ff-pointer self) trans aabbMin aabbMax margin))

(cl:defmethod set-local-scaling ((self bt-polyhedral-convex-aabb-caching-shape) (scaling bt-vector3))
  (btPolyhedralConvexAabbCachingShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-aabb ((self bt-polyhedral-convex-aabb-caching-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btPolyhedralConvexAabbCachingShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod recalc-local-aabb ((self bt-polyhedral-convex-aabb-caching-shape))
  (btPolyhedralConvexAabbCachingShape_recalcLocalAabb (ff-pointer self)))


(cl:defclass bt-convex-hull-shape(btPolyhedralConvexAabbCachingShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-convex-hull-shape) &key points (numPoints cl:integer) (stride cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_btConvexHullShape_3 points numPoints stride)))

(cl:defmethod initialize-instance :after ((obj bt-convex-hull-shape) &key points (numPoints cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_btConvexHullShape_2 points numPoints)))

(cl:defmethod initialize-instance :after ((obj bt-convex-hull-shape) &key points)
  (setf (slot-value obj 'ff-pointer) (new_btConvexHullShape_1 points)))

(cl:defmethod initialize-instance :after ((obj bt-convex-hull-shape) &key)
  (setf (slot-value obj 'ff-pointer) (new_btConvexHullShape_0)))

(cl:defmethod add-point ((self bt-convex-hull-shape) (point bt-vector3) (recalculateLocalAabb t))
  (btConvexHullShape_addPoint (ff-pointer self) point recalculateLocalAabb))

(cl:defmethod add-point ((self bt-convex-hull-shape) (point bt-vector3))
  (btConvexHullShape_addPoint (ff-pointer self) point))

(cl:defmethod get-unscaled-points ((self bt-convex-hull-shape))
  (btConvexHullShape_getUnscaledPoints (ff-pointer self)))

(cl:defmethod get-unscaled-points ((self bt-convex-hull-shape))
  (btConvexHullShape_getUnscaledPoints (ff-pointer self)))

(cl:defmethod get-points ((self bt-convex-hull-shape))
  (btConvexHullShape_getPoints (ff-pointer self)))

(cl:defmethod get-scaled-point ((self bt-convex-hull-shape) (i cl:integer))
  (btConvexHullShape_getScaledPoint (ff-pointer self) i))

(cl:defmethod get-num-points ((self bt-convex-hull-shape))
  (btConvexHullShape_getNumPoints (ff-pointer self)))

(cl:defmethod local-get-supporting-vertex ((self bt-convex-hull-shape) (vec bt-vector3))
  (btConvexHullShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-convex-hull-shape) (vec bt-vector3))
  (btConvexHullShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-convex-hull-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btConvexHullShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod project ((self bt-convex-hull-shape) (trans bt-transform) (dir bt-vector3) minProj maxProj (witnesPtMin bt-vector3) (witnesPtMax bt-vector3))
  (btConvexHullShape_project (ff-pointer self) trans dir minProj maxProj witnesPtMin witnesPtMax))

(cl:defmethod get-name ((self bt-convex-hull-shape))
  (btConvexHullShape_getName (ff-pointer self)))

(cl:defmethod get-num-vertices ((self bt-convex-hull-shape))
  (btConvexHullShape_getNumVertices (ff-pointer self)))

(cl:defmethod get-num-edges ((self bt-convex-hull-shape))
  (btConvexHullShape_getNumEdges (ff-pointer self)))

(cl:defmethod get-edge ((self bt-convex-hull-shape) (i cl:integer) (pa bt-vector3) (pb bt-vector3))
  (btConvexHullShape_getEdge (ff-pointer self) i pa pb))

(cl:defmethod get-vertex ((self bt-convex-hull-shape) (i cl:integer) (vtx bt-vector3))
  (btConvexHullShape_getVertex (ff-pointer self) i vtx))

(cl:defmethod get-num-planes ((self bt-convex-hull-shape))
  (btConvexHullShape_getNumPlanes (ff-pointer self)))

(cl:defmethod get-plane ((self bt-convex-hull-shape) (planeNormal bt-vector3) (planeSupport bt-vector3) (i cl:integer))
  (btConvexHullShape_getPlane (ff-pointer self) planeNormal planeSupport i))

(cl:defmethod is-inside ((self bt-convex-hull-shape) (pt bt-vector3) (tolerance cl:number))
  (btConvexHullShape_isInside (ff-pointer self) pt tolerance))

(cl:defmethod set-local-scaling ((self bt-convex-hull-shape) (scaling bt-vector3))
  (btConvexHullShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod calculate-serialize-buffer-size ((self bt-convex-hull-shape))
  (btConvexHullShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-convex-hull-shape) dataBuffer serializer)
  (btConvexHullShape_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-sphere-shape(btConvexInternalShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-sphere-shape) &key (radius cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btSphereShape radius)))

(cl:defmethod local-get-supporting-vertex ((self bt-sphere-shape) (vec bt-vector3))
  (btSphereShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-sphere-shape) (vec bt-vector3))
  (btSphereShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-sphere-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btSphereShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod calculate-local-inertia ((self bt-sphere-shape) (mass cl:number) (inertia bt-vector3))
  (btSphereShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod get-aabb ((self bt-sphere-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btSphereShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod get-radius ((self bt-sphere-shape))
  (btSphereShape_getRadius (ff-pointer self)))

(cl:defmethod set-unscaled-radius ((self bt-sphere-shape) (radius cl:number))
  (btSphereShape_setUnscaledRadius (ff-pointer self) radius))

(cl:defmethod get-name ((self bt-sphere-shape))
  (btSphereShape_getName (ff-pointer self)))

(cl:defmethod set-margin ((self bt-sphere-shape) (margin cl:number))
  (btSphereShape_setMargin (ff-pointer self) margin))

(cl:defmethod get-margin ((self bt-sphere-shape))
  (btSphereShape_getMargin (ff-pointer self)))


(cl:defclass bt-multi-sphere-shape(btConvexInternalAabbCachingShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-multi-sphere-shape) &key (positions bt-vector3) radi (numSpheres cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_btMultiSphereShape positions radi numSpheres)))

(cl:defmethod calculate-local-inertia ((self bt-multi-sphere-shape) (mass cl:number) (inertia bt-vector3))
  (btMultiSphereShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-multi-sphere-shape) (vec bt-vector3))
  (btMultiSphereShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-multi-sphere-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btMultiSphereShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod get-sphere-count ((self bt-multi-sphere-shape))
  (btMultiSphereShape_getSphereCount (ff-pointer self)))

(cl:defmethod get-sphere-position ((self bt-multi-sphere-shape) (index cl:integer))
  (btMultiSphereShape_getSpherePosition (ff-pointer self) index))

(cl:defmethod get-sphere-radius ((self bt-multi-sphere-shape) (index cl:integer))
  (btMultiSphereShape_getSphereRadius (ff-pointer self) index))

(cl:defmethod get-name ((self bt-multi-sphere-shape))
  (btMultiSphereShape_getName (ff-pointer self)))

(cl:defmethod calculate-serialize-buffer-size ((self bt-multi-sphere-shape))
  (btMultiSphereShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-multi-sphere-shape) dataBuffer serializer)
  (btMultiSphereShape_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-concave-shape(btCollisionShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod process-all-triangles ((self bt-concave-shape) callback (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btConcaveShape_processAllTriangles (ff-pointer self) callback aabbMin aabbMax))

(cl:defmethod get-margin ((self bt-concave-shape))
  (btConcaveShape_getMargin (ff-pointer self)))

(cl:defmethod set-margin ((self bt-concave-shape) (collisionMargin cl:number))
  (btConcaveShape_setMargin (ff-pointer self) collisionMargin))


(cl:defclass bt-static-plane-shape(btConcaveShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-static-plane-shape) &key (planeNormal bt-vector3) (planeConstant cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btStaticPlaneShape planeNormal planeConstant)))

(cl:defmethod get-aabb ((self bt-static-plane-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btStaticPlaneShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod process-all-triangles ((self bt-static-plane-shape) callback (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btStaticPlaneShape_processAllTriangles (ff-pointer self) callback aabbMin aabbMax))

(cl:defmethod calculate-local-inertia ((self bt-static-plane-shape) (mass cl:number) (inertia bt-vector3))
  (btStaticPlaneShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod set-local-scaling ((self bt-static-plane-shape) (scaling bt-vector3))
  (btStaticPlaneShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-local-scaling ((self bt-static-plane-shape))
  (btStaticPlaneShape_getLocalScaling (ff-pointer self)))

(cl:defmethod get-plane-normal ((self bt-static-plane-shape))
  (btStaticPlaneShape_getPlaneNormal (ff-pointer self)))

(cl:defmethod get-plane-constant ((self bt-static-plane-shape))
  (btStaticPlaneShape_getPlaneConstant (ff-pointer self)))

(cl:defmethod get-name ((self bt-static-plane-shape))
  (btStaticPlaneShape_getName (ff-pointer self)))

(cl:defmethod calculate-serialize-buffer-size ((self bt-static-plane-shape))
  (btStaticPlaneShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-static-plane-shape) dataBuffer serializer)
  (btStaticPlaneShape_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-box-shape(btPolyhedralConvexShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-half-extents-with-margin ((self bt-box-shape))
  (btBoxShape_getHalfExtentsWithMargin (ff-pointer self)))

(cl:defmethod get-half-extents-without-margin ((self bt-box-shape))
  (btBoxShape_getHalfExtentsWithoutMargin (ff-pointer self)))

(cl:defmethod local-get-supporting-vertex ((self bt-box-shape) (vec bt-vector3))
  (btBoxShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-box-shape) (vec bt-vector3))
  (btBoxShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-box-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btBoxShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod initialize-instance :after ((obj bt-box-shape) &key (boxHalfExtents bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btBoxShape boxHalfExtents)))

(cl:defmethod set-margin ((self bt-box-shape) (collisionMargin cl:number))
  (btBoxShape_setMargin (ff-pointer self) collisionMargin))

(cl:defmethod set-local-scaling ((self bt-box-shape) (scaling bt-vector3))
  (btBoxShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-aabb ((self bt-box-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btBoxShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod calculate-local-inertia ((self bt-box-shape) (mass cl:number) (inertia bt-vector3))
  (btBoxShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod get-plane ((self bt-box-shape) (planeNormal bt-vector3) (planeSupport bt-vector3) (i cl:integer))
  (btBoxShape_getPlane (ff-pointer self) planeNormal planeSupport i))

(cl:defmethod get-num-planes ((self bt-box-shape))
  (btBoxShape_getNumPlanes (ff-pointer self)))

(cl:defmethod get-num-vertices ((self bt-box-shape))
  (btBoxShape_getNumVertices (ff-pointer self)))

(cl:defmethod get-num-edges ((self bt-box-shape))
  (btBoxShape_getNumEdges (ff-pointer self)))

(cl:defmethod get-vertex ((self bt-box-shape) (i cl:integer) (vtx bt-vector3))
  (btBoxShape_getVertex (ff-pointer self) i vtx))

(cl:defmethod get-plane-equation ((self bt-box-shape) (plane bt-vector4) (i cl:integer))
  (btBoxShape_getPlaneEquation (ff-pointer self) plane i))

(cl:defmethod get-edge ((self bt-box-shape) (i cl:integer) (pa bt-vector3) (pb bt-vector3))
  (btBoxShape_getEdge (ff-pointer self) i pa pb))

(cl:defmethod is-inside ((self bt-box-shape) (pt bt-vector3) (tolerance cl:number))
  (btBoxShape_isInside (ff-pointer self) pt tolerance))

(cl:defmethod get-name ((self bt-box-shape))
  (btBoxShape_getName (ff-pointer self)))

(cl:defmethod get-num-preferred-penetration-directions ((self bt-box-shape))
  (btBoxShape_getNumPreferredPenetrationDirections (ff-pointer self)))

(cl:defmethod get-preferred-penetration-direction ((self bt-box-shape) (index cl:integer) (penetrationVector bt-vector3))
  (btBoxShape_getPreferredPenetrationDirection (ff-pointer self) index penetrationVector))


(cl:defclass bt-dynamics-world(btCollisionWorld)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod step-simulation ((self bt-dynamics-world) (timeStep cl:number) (maxSubSteps cl:integer) (fixedTimeStep cl:number))
  (btDynamicsWorld_stepSimulation (ff-pointer self) timeStep maxSubSteps fixedTimeStep))

(cl:defmethod step-simulation ((self bt-dynamics-world) (timeStep cl:number) (maxSubSteps cl:integer))
  (btDynamicsWorld_stepSimulation (ff-pointer self) timeStep maxSubSteps))

(cl:defmethod step-simulation ((self bt-dynamics-world) (timeStep cl:number))
  (btDynamicsWorld_stepSimulation (ff-pointer self) timeStep))

(cl:defmethod debug-draw-world ((self bt-dynamics-world))
  (btDynamicsWorld_debugDrawWorld (ff-pointer self)))

(cl:defmethod add-constraint ((self bt-dynamics-world) constraint (disableCollisionsBetweenLinkedBodies t))
  (btDynamicsWorld_addConstraint (ff-pointer self) constraint disableCollisionsBetweenLinkedBodies))

(cl:defmethod add-constraint ((self bt-dynamics-world) constraint)
  (btDynamicsWorld_addConstraint (ff-pointer self) constraint))

(cl:defmethod remove-constraint ((self bt-dynamics-world) constraint)
  (btDynamicsWorld_removeConstraint (ff-pointer self) constraint))

(cl:defmethod add-action ((self bt-dynamics-world) action)
  (btDynamicsWorld_addAction (ff-pointer self) action))

(cl:defmethod remove-action ((self bt-dynamics-world) action)
  (btDynamicsWorld_removeAction (ff-pointer self) action))

(cl:defmethod set-gravity ((self bt-dynamics-world) (gravity bt-vector3))
  (btDynamicsWorld_setGravity (ff-pointer self) gravity))

(cl:defmethod get-gravity ((self bt-dynamics-world))
  (btDynamicsWorld_getGravity (ff-pointer self)))

(cl:defmethod synchronize-motion-states ((self bt-dynamics-world))
  (btDynamicsWorld_synchronizeMotionStates (ff-pointer self)))

(cl:defmethod add-rigid-body ((self bt-dynamics-world) body)
  (btDynamicsWorld_addRigidBody (ff-pointer self) body))

(cl:defmethod add-rigid-body ((self bt-dynamics-world) body (group cl:integer) (mask cl:integer))
  (btDynamicsWorld_addRigidBody (ff-pointer self) body group mask))

(cl:defmethod remove-rigid-body ((self bt-dynamics-world) body)
  (btDynamicsWorld_removeRigidBody (ff-pointer self) body))

(cl:defmethod set-constraint-solver ((self bt-dynamics-world) solver)
  (btDynamicsWorld_setConstraintSolver (ff-pointer self) solver))

(cl:defmethod get-constraint-solver ((self bt-dynamics-world))
  (btDynamicsWorld_getConstraintSolver (ff-pointer self)))

(cl:defmethod get-num-constraints ((self bt-dynamics-world))
  (btDynamicsWorld_getNumConstraints (ff-pointer self)))

(cl:defmethod get-constraint ((self bt-dynamics-world) (index cl:integer))
  (btDynamicsWorld_getConstraint (ff-pointer self) index))

(cl:defmethod get-constraint ((self bt-dynamics-world) (index cl:integer))
  (btDynamicsWorld_getConstraint (ff-pointer self) index))

(cl:defmethod get-world-type ((self bt-dynamics-world))
  (btDynamicsWorld_getWorldType (ff-pointer self)))

(cl:defmethod clear-forces ((self bt-dynamics-world))
  (btDynamicsWorld_clearForces (ff-pointer self)))

(cl:defmethod set-internal-tick-callback ((self bt-dynamics-world) cb worldUserInfo (isPreTick t))
  (btDynamicsWorld_setInternalTickCallback (ff-pointer self) cb worldUserInfo isPreTick))

(cl:defmethod set-internal-tick-callback ((self bt-dynamics-world) cb worldUserInfo)
  (btDynamicsWorld_setInternalTickCallback (ff-pointer self) cb worldUserInfo))

(cl:defmethod set-internal-tick-callback ((self bt-dynamics-world) cb)
  (btDynamicsWorld_setInternalTickCallback (ff-pointer self) cb))

(cl:defmethod set-world-user-info ((self bt-dynamics-world) worldUserInfo)
  (btDynamicsWorld_setWorldUserInfo (ff-pointer self) worldUserInfo))

(cl:defmethod get-world-user-info ((self bt-dynamics-world))
  (btDynamicsWorld_getWorldUserInfo (ff-pointer self)))

(cl:defmethod get-solver-info ((self bt-dynamics-world))
  (btDynamicsWorld_getSolverInfo (ff-pointer self)))

(cl:defmethod add-vehicle ((self bt-dynamics-world) vehicle)
  (btDynamicsWorld_addVehicle (ff-pointer self) vehicle))

(cl:defmethod remove-vehicle ((self bt-dynamics-world) vehicle)
  (btDynamicsWorld_removeVehicle (ff-pointer self) vehicle))

(cl:defmethod add-character ((self bt-dynamics-world) character)
  (btDynamicsWorld_addCharacter (ff-pointer self) character))

(cl:defmethod remove-character ((self bt-dynamics-world) character)
  (btDynamicsWorld_removeCharacter (ff-pointer self) character))


(cl:defclass bt-discrete-dynamics-world(btDynamicsWorld)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-discrete-dynamics-world) &key (dispatcher bt-dispatcher) (pairCache bt-broadphase-interface) constraintSolver (collisionConfiguration bt-collision-configuration))
  (setf (slot-value obj 'ff-pointer) (new_btDiscreteDynamicsWorld dispatcher pairCache constraintSolver collisionConfiguration)))

(cl:defmethod step-simulation ((self bt-discrete-dynamics-world) (timeStep cl:number) (maxSubSteps cl:integer) (fixedTimeStep cl:number))
  (btDiscreteDynamicsWorld_stepSimulation (ff-pointer self) timeStep maxSubSteps fixedTimeStep))

(cl:defmethod step-simulation ((self bt-discrete-dynamics-world) (timeStep cl:number) (maxSubSteps cl:integer))
  (btDiscreteDynamicsWorld_stepSimulation (ff-pointer self) timeStep maxSubSteps))

(cl:defmethod step-simulation ((self bt-discrete-dynamics-world) (timeStep cl:number))
  (btDiscreteDynamicsWorld_stepSimulation (ff-pointer self) timeStep))

(cl:defmethod synchronize-motion-states ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_synchronizeMotionStates (ff-pointer self)))

(cl:defmethod synchronize-single-motion-state ((self bt-discrete-dynamics-world) body)
  (btDiscreteDynamicsWorld_synchronizeSingleMotionState (ff-pointer self) body))

(cl:defmethod add-constraint ((self bt-discrete-dynamics-world) constraint (disableCollisionsBetweenLinkedBodies t))
  (btDiscreteDynamicsWorld_addConstraint (ff-pointer self) constraint disableCollisionsBetweenLinkedBodies))

(cl:defmethod add-constraint ((self bt-discrete-dynamics-world) constraint)
  (btDiscreteDynamicsWorld_addConstraint (ff-pointer self) constraint))

(cl:defmethod remove-constraint ((self bt-discrete-dynamics-world) constraint)
  (btDiscreteDynamicsWorld_removeConstraint (ff-pointer self) constraint))

(cl:defmethod add-action ((self bt-discrete-dynamics-world) arg1)
  (btDiscreteDynamicsWorld_addAction (ff-pointer self) arg1))

(cl:defmethod remove-action ((self bt-discrete-dynamics-world) arg1)
  (btDiscreteDynamicsWorld_removeAction (ff-pointer self) arg1))

(cl:defmethod get-simulation-island-manager ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getSimulationIslandManager (ff-pointer self)))

(cl:defmethod get-simulation-island-manager ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getSimulationIslandManager (ff-pointer self)))

(cl:defmethod get-collision-world ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getCollisionWorld (ff-pointer self)))

(cl:defmethod set-gravity ((self bt-discrete-dynamics-world) (gravity bt-vector3))
  (btDiscreteDynamicsWorld_setGravity (ff-pointer self) gravity))

(cl:defmethod get-gravity ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getGravity (ff-pointer self)))

(cl:defmethod add-collision-object ((self bt-discrete-dynamics-world) (collisionObject bt-collision-object) (collisionFilterGroup cl:integer) (collisionFilterMask cl:integer))
  (btDiscreteDynamicsWorld_addCollisionObject (ff-pointer self) collisionObject collisionFilterGroup collisionFilterMask))

(cl:defmethod add-collision-object ((self bt-discrete-dynamics-world) (collisionObject bt-collision-object) (collisionFilterGroup cl:integer))
  (btDiscreteDynamicsWorld_addCollisionObject (ff-pointer self) collisionObject collisionFilterGroup))

(cl:defmethod add-collision-object ((self bt-discrete-dynamics-world) (collisionObject bt-collision-object))
  (btDiscreteDynamicsWorld_addCollisionObject (ff-pointer self) collisionObject))

(cl:defmethod add-rigid-body ((self bt-discrete-dynamics-world) body)
  (btDiscreteDynamicsWorld_addRigidBody (ff-pointer self) body))

(cl:defmethod add-rigid-body ((self bt-discrete-dynamics-world) body (group cl:integer) (mask cl:integer))
  (btDiscreteDynamicsWorld_addRigidBody (ff-pointer self) body group mask))

(cl:defmethod remove-rigid-body ((self bt-discrete-dynamics-world) body)
  (btDiscreteDynamicsWorld_removeRigidBody (ff-pointer self) body))

(cl:defmethod remove-collision-object ((self bt-discrete-dynamics-world) (collisionObject bt-collision-object))
  (btDiscreteDynamicsWorld_removeCollisionObject (ff-pointer self) collisionObject))

(cl:defmethod debug-draw-constraint ((self bt-discrete-dynamics-world) constraint)
  (btDiscreteDynamicsWorld_debugDrawConstraint (ff-pointer self) constraint))

(cl:defmethod debug-draw-world ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_debugDrawWorld (ff-pointer self)))

(cl:defmethod set-constraint-solver ((self bt-discrete-dynamics-world) solver)
  (btDiscreteDynamicsWorld_setConstraintSolver (ff-pointer self) solver))

(cl:defmethod get-constraint-solver ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getConstraintSolver (ff-pointer self)))

(cl:defmethod get-num-constraints ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getNumConstraints (ff-pointer self)))

(cl:defmethod get-constraint ((self bt-discrete-dynamics-world) (index cl:integer))
  (btDiscreteDynamicsWorld_getConstraint (ff-pointer self) index))

(cl:defmethod get-constraint ((self bt-discrete-dynamics-world) (index cl:integer))
  (btDiscreteDynamicsWorld_getConstraint (ff-pointer self) index))

(cl:defmethod get-world-type ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getWorldType (ff-pointer self)))

(cl:defmethod clear-forces ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_clearForces (ff-pointer self)))

(cl:defmethod apply-gravity ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_applyGravity (ff-pointer self)))

(cl:defmethod set-num-tasks ((self bt-discrete-dynamics-world) (numTasks cl:integer))
  (btDiscreteDynamicsWorld_setNumTasks (ff-pointer self) numTasks))

(cl:defmethod update-vehicles ((self bt-discrete-dynamics-world) (timeStep cl:number))
  (btDiscreteDynamicsWorld_updateVehicles (ff-pointer self) timeStep))

(cl:defmethod add-vehicle ((self bt-discrete-dynamics-world) vehicle)
  (btDiscreteDynamicsWorld_addVehicle (ff-pointer self) vehicle))

(cl:defmethod remove-vehicle ((self bt-discrete-dynamics-world) vehicle)
  (btDiscreteDynamicsWorld_removeVehicle (ff-pointer self) vehicle))

(cl:defmethod add-character ((self bt-discrete-dynamics-world) character)
  (btDiscreteDynamicsWorld_addCharacter (ff-pointer self) character))

(cl:defmethod remove-character ((self bt-discrete-dynamics-world) character)
  (btDiscreteDynamicsWorld_removeCharacter (ff-pointer self) character))

(cl:defmethod set-synchronize-all-motion-states ((self bt-discrete-dynamics-world) (synchronizeAll t))
  (btDiscreteDynamicsWorld_setSynchronizeAllMotionStates (ff-pointer self) synchronizeAll))

(cl:defmethod get-synchronize-all-motion-states ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getSynchronizeAllMotionStates (ff-pointer self)))

(cl:defmethod set-apply-speculative-contact-restitution ((self bt-discrete-dynamics-world) (enable t))
  (btDiscreteDynamicsWorld_setApplySpeculativeContactRestitution (ff-pointer self) enable))

(cl:defmethod get-apply-speculative-contact-restitution ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getApplySpeculativeContactRestitution (ff-pointer self)))

(cl:defmethod serialize ((self bt-discrete-dynamics-world) serializer)
  (btDiscreteDynamicsWorld_serialize (ff-pointer self) serializer))

(cl:defmethod set-latency-motion-state-interpolation ((self bt-discrete-dynamics-world) (latencyInterpolation t))
  (btDiscreteDynamicsWorld_setLatencyMotionStateInterpolation (ff-pointer self) latencyInterpolation))

(cl:defmethod get-latency-motion-state-interpolation ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getLatencyMotionStateInterpolation (ff-pointer self)))


(cl:defclass bt-simple-dynamics-world(btDynamicsWorld)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-simple-dynamics-world) &key (dispatcher bt-dispatcher) (pairCache bt-broadphase-interface) constraintSolver (collisionConfiguration bt-collision-configuration))
  (setf (slot-value obj 'ff-pointer) (new_btSimpleDynamicsWorld dispatcher pairCache constraintSolver collisionConfiguration)))

(cl:defmethod step-simulation ((self bt-simple-dynamics-world) (timeStep cl:number) (maxSubSteps cl:integer) (fixedTimeStep cl:number))
  (btSimpleDynamicsWorld_stepSimulation (ff-pointer self) timeStep maxSubSteps fixedTimeStep))

(cl:defmethod step-simulation ((self bt-simple-dynamics-world) (timeStep cl:number) (maxSubSteps cl:integer))
  (btSimpleDynamicsWorld_stepSimulation (ff-pointer self) timeStep maxSubSteps))

(cl:defmethod step-simulation ((self bt-simple-dynamics-world) (timeStep cl:number))
  (btSimpleDynamicsWorld_stepSimulation (ff-pointer self) timeStep))

(cl:defmethod set-gravity ((self bt-simple-dynamics-world) (gravity bt-vector3))
  (btSimpleDynamicsWorld_setGravity (ff-pointer self) gravity))

(cl:defmethod get-gravity ((self bt-simple-dynamics-world))
  (btSimpleDynamicsWorld_getGravity (ff-pointer self)))

(cl:defmethod add-rigid-body ((self bt-simple-dynamics-world) body)
  (btSimpleDynamicsWorld_addRigidBody (ff-pointer self) body))

(cl:defmethod add-rigid-body ((self bt-simple-dynamics-world) body (group cl:integer) (mask cl:integer))
  (btSimpleDynamicsWorld_addRigidBody (ff-pointer self) body group mask))

(cl:defmethod remove-rigid-body ((self bt-simple-dynamics-world) body)
  (btSimpleDynamicsWorld_removeRigidBody (ff-pointer self) body))

(cl:defmethod debug-draw-world ((self bt-simple-dynamics-world))
  (btSimpleDynamicsWorld_debugDrawWorld (ff-pointer self)))

(cl:defmethod add-action ((self bt-simple-dynamics-world) action)
  (btSimpleDynamicsWorld_addAction (ff-pointer self) action))

(cl:defmethod remove-action ((self bt-simple-dynamics-world) action)
  (btSimpleDynamicsWorld_removeAction (ff-pointer self) action))

(cl:defmethod remove-collision-object ((self bt-simple-dynamics-world) (collisionObject bt-collision-object))
  (btSimpleDynamicsWorld_removeCollisionObject (ff-pointer self) collisionObject))

(cl:defmethod update-aabbs ((self bt-simple-dynamics-world))
  (btSimpleDynamicsWorld_updateAabbs (ff-pointer self)))

(cl:defmethod synchronize-motion-states ((self bt-simple-dynamics-world))
  (btSimpleDynamicsWorld_synchronizeMotionStates (ff-pointer self)))

(cl:defmethod set-constraint-solver ((self bt-simple-dynamics-world) solver)
  (btSimpleDynamicsWorld_setConstraintSolver (ff-pointer self) solver))

(cl:defmethod get-constraint-solver ((self bt-simple-dynamics-world))
  (btSimpleDynamicsWorld_getConstraintSolver (ff-pointer self)))

(cl:defmethod get-world-type ((self bt-simple-dynamics-world))
  (btSimpleDynamicsWorld_getWorldType (ff-pointer self)))

(cl:defmethod clear-forces ((self bt-simple-dynamics-world))
  (btSimpleDynamicsWorld_clearForces (ff-pointer self)))


(cl:defclass bt-rigid-body(btCollisionObject)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-rigid-body) &key constructionInfo)
  (setf (slot-value obj 'ff-pointer) (new_btRigidBody_from_btRigidBodyConstructionInfo constructionInfo)))

(cl:defmethod initialize-instance :after ((obj bt-rigid-body) &key (mass cl:number) (motionState bt-motion-state) (collisionShape bt-collision-shape) (localInertia bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btRigidBody_backward_compatible mass motionState collisionShape localInertia)))

(cl:defmethod initialize-instance :after ((obj bt-rigid-body) &key (mass cl:number) (motionState bt-motion-state) (collisionShape bt-collision-shape))
  (setf (slot-value obj 'ff-pointer) (new_btRigidBody mass motionState collisionShape)))

(cl:defmethod proceed-to-transform ((self bt-rigid-body) (newTrans bt-transform))
  (btRigidBody_proceedToTransform (ff-pointer self) newTrans))

(cl:defmethod predict-integrated-transform ((self bt-rigid-body) (step cl:number) (predictedTransform bt-transform))
  (btRigidBody_predictIntegratedTransform (ff-pointer self) step predictedTransform))

(cl:defmethod save-kinematic-state ((self bt-rigid-body) (step cl:number))
  (btRigidBody_saveKinematicState (ff-pointer self) step))

(cl:defmethod apply-gravity ((self bt-rigid-body))
  (btRigidBody_applyGravity (ff-pointer self)))

(cl:defmethod set-gravity ((self bt-rigid-body) (acceleration bt-vector3))
  (btRigidBody_setGravity (ff-pointer self) acceleration))

(cl:defmethod get-gravity ((self bt-rigid-body))
  (btRigidBody_getGravity (ff-pointer self)))

(cl:defmethod set-damping ((self bt-rigid-body) (lin_damping cl:number) (ang_damping cl:number))
  (btRigidBody_setDamping (ff-pointer self) lin_damping ang_damping))

(cl:defmethod get-linear-damping ((self bt-rigid-body))
  (btRigidBody_getLinearDamping (ff-pointer self)))

(cl:defmethod get-angular-damping ((self bt-rigid-body))
  (btRigidBody_getAngularDamping (ff-pointer self)))

(cl:defmethod get-linear-sleeping-threshold ((self bt-rigid-body))
  (btRigidBody_getLinearSleepingThreshold (ff-pointer self)))

(cl:defmethod get-angular-sleeping-threshold ((self bt-rigid-body))
  (btRigidBody_getAngularSleepingThreshold (ff-pointer self)))

(cl:defmethod apply-damping ((self bt-rigid-body) (timeStep cl:number))
  (btRigidBody_applyDamping (ff-pointer self) timeStep))

(cl:defmethod get-collision-shape ((self bt-rigid-body))
  (btRigidBody_getCollisionShape (ff-pointer self)))

(cl:defmethod get-collision-shape ((self bt-rigid-body))
  (btRigidBody_getCollisionShape (ff-pointer self)))

(cl:defmethod set-mass-props ((self bt-rigid-body) (mass cl:number) (inertia bt-vector3))
  (btRigidBody_setMassProps (ff-pointer self) mass inertia))

(cl:defmethod get-linear-factor ((self bt-rigid-body))
  (btRigidBody_getLinearFactor (ff-pointer self)))

(cl:defmethod set-linear-factor ((self bt-rigid-body) (linearFactor bt-vector3))
  (btRigidBody_setLinearFactor (ff-pointer self) linearFactor))

(cl:defmethod get-inv-mass ((self bt-rigid-body))
  (btRigidBody_getInvMass (ff-pointer self)))

(cl:defmethod get-inv-inertia-tensor-world ((self bt-rigid-body))
  (btRigidBody_getInvInertiaTensorWorld (ff-pointer self)))

(cl:defmethod integrate-velocities ((self bt-rigid-body) (step cl:number))
  (btRigidBody_integrateVelocities (ff-pointer self) step))

(cl:defmethod set-center-of-mass-transform ((self bt-rigid-body) (xform bt-transform))
  (btRigidBody_setCenterOfMassTransform (ff-pointer self) xform))

(cl:defmethod apply-central-force ((self bt-rigid-body) (force bt-vector3))
  (btRigidBody_applyCentralForce (ff-pointer self) force))

(cl:defmethod get-total-force ((self bt-rigid-body))
  (btRigidBody_getTotalForce (ff-pointer self)))

(cl:defmethod get-total-torque ((self bt-rigid-body))
  (btRigidBody_getTotalTorque (ff-pointer self)))

(cl:defmethod get-inv-inertia-diag-local ((self bt-rigid-body))
  (btRigidBody_getInvInertiaDiagLocal (ff-pointer self)))

(cl:defmethod set-inv-inertia-diag-local ((self bt-rigid-body) (diagInvInertia bt-vector3))
  (btRigidBody_setInvInertiaDiagLocal (ff-pointer self) diagInvInertia))

(cl:defmethod set-sleeping-thresholds ((self bt-rigid-body) (linear cl:number) (angular cl:number))
  (btRigidBody_setSleepingThresholds (ff-pointer self) linear angular))

(cl:defmethod apply-torque ((self bt-rigid-body) (torque bt-vector3))
  (btRigidBody_applyTorque (ff-pointer self) torque))

(cl:defmethod apply-force ((self bt-rigid-body) (force bt-vector3) (rel_pos bt-vector3))
  (btRigidBody_applyForce (ff-pointer self) force rel_pos))

(cl:defmethod apply-central-impulse ((self bt-rigid-body) (impulse bt-vector3))
  (btRigidBody_applyCentralImpulse (ff-pointer self) impulse))

(cl:defmethod apply-torque-impulse ((self bt-rigid-body) (torque bt-vector3))
  (btRigidBody_applyTorqueImpulse (ff-pointer self) torque))

(cl:defmethod apply-impulse ((self bt-rigid-body) (impulse bt-vector3) (rel_pos bt-vector3))
  (btRigidBody_applyImpulse (ff-pointer self) impulse rel_pos))

(cl:defmethod clear-forces ((self bt-rigid-body))
  (btRigidBody_clearForces (ff-pointer self)))

(cl:defmethod update-inertia-tensor ((self bt-rigid-body))
  (btRigidBody_updateInertiaTensor (ff-pointer self)))

(cl:defmethod get-center-of-mass-position ((self bt-rigid-body))
  (btRigidBody_getCenterOfMassPosition (ff-pointer self)))

(cl:defmethod get-orientation ((self bt-rigid-body))
  (btRigidBody_getOrientation (ff-pointer self)))

(cl:defmethod get-center-of-mass-transform ((self bt-rigid-body))
  (btRigidBody_getCenterOfMassTransform (ff-pointer self)))

(cl:defmethod get-linear-velocity ((self bt-rigid-body))
  (btRigidBody_getLinearVelocity (ff-pointer self)))

(cl:defmethod get-angular-velocity ((self bt-rigid-body))
  (btRigidBody_getAngularVelocity (ff-pointer self)))

(cl:defmethod set-linear-velocity ((self bt-rigid-body) (lin_vel bt-vector3))
  (btRigidBody_setLinearVelocity (ff-pointer self) lin_vel))

(cl:defmethod set-angular-velocity ((self bt-rigid-body) (ang_vel bt-vector3))
  (btRigidBody_setAngularVelocity (ff-pointer self) ang_vel))

(cl:defmethod get-velocity-in-local-point ((self bt-rigid-body) (rel_pos bt-vector3))
  (btRigidBody_getVelocityInLocalPoint (ff-pointer self) rel_pos))

(cl:defmethod translate ((self bt-rigid-body) (v bt-vector3))
  (btRigidBody_translate (ff-pointer self) v))

(cl:defmethod get-aabb ((self bt-rigid-body) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btRigidBody_getAabb (ff-pointer self) aabbMin aabbMax))

(cl:defmethod compute-impulse-denominator ((self bt-rigid-body) (pos bt-vector3) (normal bt-vector3))
  (btRigidBody_computeImpulseDenominator (ff-pointer self) pos normal))

(cl:defmethod compute-angular-impulse-denominator ((self bt-rigid-body) (axis bt-vector3))
  (btRigidBody_computeAngularImpulseDenominator (ff-pointer self) axis))

(cl:defmethod update-deactivation ((self bt-rigid-body) (timeStep cl:number))
  (btRigidBody_updateDeactivation (ff-pointer self) timeStep))

(cl:defmethod wants-sleeping ((self bt-rigid-body))
  (btRigidBody_wantsSleeping (ff-pointer self)))

(cl:defmethod get-broadphase-proxy ((self bt-rigid-body))
  (btRigidBody_getBroadphaseProxy (ff-pointer self)))

(cl:defmethod get-broadphase-proxy ((self bt-rigid-body))
  (btRigidBody_getBroadphaseProxy (ff-pointer self)))

(cl:defmethod set-new-broadphase-proxy ((self bt-rigid-body) broadphaseProxy)
  (btRigidBody_setNewBroadphaseProxy (ff-pointer self) broadphaseProxy))

(cl:defmethod get-motion-state ((self bt-rigid-body))
  (btRigidBody_getMotionState (ff-pointer self)))

(cl:defmethod get-motion-state ((self bt-rigid-body))
  (btRigidBody_getMotionState (ff-pointer self)))

(cl:defmethod set-motion-state ((self bt-rigid-body) (motionState bt-motion-state))
  (btRigidBody_setMotionState (ff-pointer self) motionState))

(cl:defmethod (cl:setf m_contactSolverType) (arg0 (obj bt-rigid-body))
  (btRigidBody_m_contactSolverType_set (ff-pointer obj) arg0))

(cl:defmethod m_contactSolverType ((obj bt-rigid-body))
  (btRigidBody_m_contactSolverType_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_frictionSolverType) (arg0 (obj bt-rigid-body))
  (btRigidBody_m_frictionSolverType_set (ff-pointer obj) arg0))

(cl:defmethod m_frictionSolverType ((obj bt-rigid-body))
  (btRigidBody_m_frictionSolverType_get (ff-pointer obj)))

(cl:defmethod set-angular-factor ((self bt-rigid-body) (angFac bt-vector3))
  (btRigidBody_setAngularFactor (ff-pointer self) angFac))

(cl:defmethod set-angular-factor ((self bt-rigid-body) (angFac cl:number))
  (btRigidBody_setAngularFactor (ff-pointer self) angFac))

(cl:defmethod get-angular-factor ((self bt-rigid-body))
  (btRigidBody_getAngularFactor (ff-pointer self)))

(cl:defmethod is-in-world ((self bt-rigid-body))
  (btRigidBody_isInWorld (ff-pointer self)))

(cl:defmethod check-collide-with-override ((self bt-rigid-body) (co bt-collision-object))
  (btRigidBody_checkCollideWithOverride (ff-pointer self) co))

(cl:defmethod add-constraint-ref ((self bt-rigid-body) c)
  (btRigidBody_addConstraintRef (ff-pointer self) c))

(cl:defmethod remove-constraint-ref ((self bt-rigid-body) c)
  (btRigidBody_removeConstraintRef (ff-pointer self) c))

(cl:defmethod get-constraint-ref ((self bt-rigid-body) (index cl:integer))
  (btRigidBody_getConstraintRef (ff-pointer self) index))

(cl:defmethod get-num-constraint-refs ((self bt-rigid-body))
  (btRigidBody_getNumConstraintRefs (ff-pointer self)))

(cl:defmethod set-flags ((self bt-rigid-body) (flags cl:integer))
  (btRigidBody_setFlags (ff-pointer self) flags))

(cl:defmethod get-flags ((self bt-rigid-body))
  (btRigidBody_getFlags (ff-pointer self)))

(cl:defmethod compute-gyroscopic-force ((self bt-rigid-body) (maxGyroscopicForce cl:number))
  (btRigidBody_computeGyroscopicForce (ff-pointer self) maxGyroscopicForce))

(cl:defmethod calculate-serialize-buffer-size ((self bt-rigid-body))
  (btRigidBody_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-rigid-body) dataBuffer serializer)
  (btRigidBody_serialize (ff-pointer self) dataBuffer serializer))

(cl:defmethod serialize-single-object ((self bt-rigid-body) serializer)
  (btRigidBody_serializeSingleObject (ff-pointer self) serializer))


(cl:defclass bt-constraint-solver()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod prepare-solve ((self bt-constraint-solver) (arg1 cl:integer) (arg2 cl:integer))
  (btConstraintSolver_prepareSolve (ff-pointer self) arg1 arg2))

(cl:defmethod solve-group ((self bt-constraint-solver) bodies (numBodies cl:integer) manifold (numManifolds cl:integer) constraints (numConstraints cl:integer) info debugDrawer (dispatcher bt-dispatcher))
  (btConstraintSolver_solveGroup (ff-pointer self) bodies numBodies manifold numManifolds constraints numConstraints info debugDrawer dispatcher))

(cl:defmethod all-solved ((self bt-constraint-solver) arg1 arg2)
  (btConstraintSolver_allSolved (ff-pointer self) arg1 arg2))

(cl:defmethod reset ((self bt-constraint-solver))
  (btConstraintSolver_reset (ff-pointer self)))

(cl:defmethod get-solver-type ((self bt-constraint-solver))
  (btConstraintSolver_getSolverType (ff-pointer self)))


(cl:defclass bt-typed-constraint(btTypedObject)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-override-num-solver-iterations ((self bt-typed-constraint))
  (btTypedConstraint_getOverrideNumSolverIterations (ff-pointer self)))

(cl:defmethod set-override-num-solver-iterations ((self bt-typed-constraint) (overideNumIterations cl:integer))
  (btTypedConstraint_setOverrideNumSolverIterations (ff-pointer self) overideNumIterations))

(cl:defmethod build-jacobian ((self bt-typed-constraint))
  (btTypedConstraint_buildJacobian (ff-pointer self)))

(cl:defmethod setup-solver-constraint ((self bt-typed-constraint) ca (solverBodyA cl:integer) (solverBodyB cl:integer) (timeStep cl:number))
  (btTypedConstraint_setupSolverConstraint (ff-pointer self) ca solverBodyA solverBodyB timeStep))

(cl:defmethod get-info1 ((self bt-typed-constraint) info)
  (btTypedConstraint_getInfo1 (ff-pointer self) info))

(cl:defmethod get-info2 ((self bt-typed-constraint) info)
  (btTypedConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod internal-set-applied-impulse ((self bt-typed-constraint) (appliedImpulse cl:number))
  (btTypedConstraint_internalSetAppliedImpulse (ff-pointer self) appliedImpulse))

(cl:defmethod internal-get-applied-impulse ((self bt-typed-constraint))
  (btTypedConstraint_internalGetAppliedImpulse (ff-pointer self)))

(cl:defmethod get-breaking-impulse-threshold ((self bt-typed-constraint))
  (btTypedConstraint_getBreakingImpulseThreshold (ff-pointer self)))

(cl:defmethod set-breaking-impulse-threshold ((self bt-typed-constraint) (threshold cl:number))
  (btTypedConstraint_setBreakingImpulseThreshold (ff-pointer self) threshold))

(cl:defmethod is-enabled ((self bt-typed-constraint))
  (btTypedConstraint_isEnabled (ff-pointer self)))

(cl:defmethod set-enabled ((self bt-typed-constraint) (enabled t))
  (btTypedConstraint_setEnabled (ff-pointer self) enabled))

(cl:defmethod solve-constraint-obsolete ((self bt-typed-constraint) arg1 arg2 (arg3 cl:number))
  (btTypedConstraint_solveConstraintObsolete (ff-pointer self) arg1 arg2 arg3))

(cl:defmethod get-rigid-body-a ((self bt-typed-constraint))
  (btTypedConstraint_getRigidBodyA (ff-pointer self)))

(cl:defmethod get-rigid-body-b ((self bt-typed-constraint))
  (btTypedConstraint_getRigidBodyB (ff-pointer self)))

(cl:defmethod get-rigid-body-a ((self bt-typed-constraint))
  (btTypedConstraint_getRigidBodyA (ff-pointer self)))

(cl:defmethod get-rigid-body-b ((self bt-typed-constraint))
  (btTypedConstraint_getRigidBodyB (ff-pointer self)))

(cl:defmethod get-user-constraint-type ((self bt-typed-constraint))
  (btTypedConstraint_getUserConstraintType (ff-pointer self)))

(cl:defmethod set-user-constraint-type ((self bt-typed-constraint) (userConstraintType cl:integer))
  (btTypedConstraint_setUserConstraintType (ff-pointer self) userConstraintType))

(cl:defmethod set-user-constraint-id ((self bt-typed-constraint) (uid cl:integer))
  (btTypedConstraint_setUserConstraintId (ff-pointer self) uid))

(cl:defmethod get-user-constraint-id ((self bt-typed-constraint))
  (btTypedConstraint_getUserConstraintId (ff-pointer self)))

(cl:defmethod set-user-constraint-ptr ((self bt-typed-constraint) ptr)
  (btTypedConstraint_setUserConstraintPtr (ff-pointer self) ptr))

(cl:defmethod get-user-constraint-ptr ((self bt-typed-constraint))
  (btTypedConstraint_getUserConstraintPtr (ff-pointer self)))

(cl:defmethod set-joint-feedback ((self bt-typed-constraint) jointFeedback)
  (btTypedConstraint_setJointFeedback (ff-pointer self) jointFeedback))

(cl:defmethod get-joint-feedback ((self bt-typed-constraint))
  (btTypedConstraint_getJointFeedback (ff-pointer self)))

(cl:defmethod get-joint-feedback ((self bt-typed-constraint))
  (btTypedConstraint_getJointFeedback (ff-pointer self)))

(cl:defmethod get-uid ((self bt-typed-constraint))
  (btTypedConstraint_getUid (ff-pointer self)))

(cl:defmethod needs-feedback ((self bt-typed-constraint))
  (btTypedConstraint_needsFeedback (ff-pointer self)))

(cl:defmethod enable-feedback ((self bt-typed-constraint) (needsFeedback t))
  (btTypedConstraint_enableFeedback (ff-pointer self) needsFeedback))

(cl:defmethod get-applied-impulse ((self bt-typed-constraint))
  (btTypedConstraint_getAppliedImpulse (ff-pointer self)))

(cl:defmethod get-constraint-type ((self bt-typed-constraint))
  (btTypedConstraint_getConstraintType (ff-pointer self)))

(cl:defmethod set-dbg-draw-size ((self bt-typed-constraint) (dbgDrawSize cl:number))
  (btTypedConstraint_setDbgDrawSize (ff-pointer self) dbgDrawSize))

(cl:defmethod get-dbg-draw-size ((self bt-typed-constraint))
  (btTypedConstraint_getDbgDrawSize (ff-pointer self)))

(cl:defmethod set-param ((self bt-typed-constraint) (num cl:integer) (value cl:number) (axis cl:integer))
  (btTypedConstraint_setParam (ff-pointer self) num value axis))

(cl:defmethod set-param ((self bt-typed-constraint) (num cl:integer) (value cl:number))
  (btTypedConstraint_setParam (ff-pointer self) num value))

(cl:defmethod get-param ((self bt-typed-constraint) (num cl:integer) (axis cl:integer))
  (btTypedConstraint_getParam (ff-pointer self) num axis))

(cl:defmethod get-param ((self bt-typed-constraint) (num cl:integer))
  (btTypedConstraint_getParam (ff-pointer self) num))

(cl:defmethod calculate-serialize-buffer-size ((self bt-typed-constraint))
  (btTypedConstraint_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-typed-constraint) dataBuffer serializer)
  (btTypedConstraint_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-angular-limit()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-angular-limit) &key)
  (setf (slot-value obj 'ff-pointer) (new_btAngularLimit)))

(cl:defmethod set ((self bt-angular-limit) (low cl:number) (high cl:number) (_softness cl:number) (_biasFactor cl:number) (_relaxationFactor cl:number))
  (btAngularLimit_set (ff-pointer self) low high _softness _biasFactor _relaxationFactor))

(cl:defmethod set ((self bt-angular-limit) (low cl:number) (high cl:number) (_softness cl:number) (_biasFactor cl:number))
  (btAngularLimit_set (ff-pointer self) low high _softness _biasFactor))

(cl:defmethod set ((self bt-angular-limit) (low cl:number) (high cl:number) (_softness cl:number))
  (btAngularLimit_set (ff-pointer self) low high _softness))

(cl:defmethod set ((self bt-angular-limit) (low cl:number) (high cl:number))
  (btAngularLimit_set (ff-pointer self) low high))

(cl:defmethod test ((self bt-angular-limit) (angle cl:number))
  (btAngularLimit_test (ff-pointer self) angle))

(cl:defmethod get-softness ((self bt-angular-limit))
  (btAngularLimit_getSoftness (ff-pointer self)))

(cl:defmethod get-bias-factor ((self bt-angular-limit))
  (btAngularLimit_getBiasFactor (ff-pointer self)))

(cl:defmethod get-relaxation-factor ((self bt-angular-limit))
  (btAngularLimit_getRelaxationFactor (ff-pointer self)))

(cl:defmethod get-correction ((self bt-angular-limit))
  (btAngularLimit_getCorrection (ff-pointer self)))

(cl:defmethod get-sign ((self bt-angular-limit))
  (btAngularLimit_getSign (ff-pointer self)))

(cl:defmethod get-half-range ((self bt-angular-limit))
  (btAngularLimit_getHalfRange (ff-pointer self)))

(cl:defmethod is-limit ((self bt-angular-limit))
  (btAngularLimit_isLimit (ff-pointer self)))

(cl:defmethod fit ((self bt-angular-limit) angle)
  (btAngularLimit_fit (ff-pointer self) angle))

(cl:defmethod get-error ((self bt-angular-limit))
  (btAngularLimit_getError (ff-pointer self)))

(cl:defmethod get-low ((self bt-angular-limit))
  (btAngularLimit_getLow (ff-pointer self)))

(cl:defmethod get-high ((self bt-angular-limit))
  (btAngularLimit_getHigh (ff-pointer self)))


(cl:defclass bt-point2-point-constraint(btTypedConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_useSolveConstraintObsolete) (arg0 (obj bt-point2-point-constraint))
  (btPoint2PointConstraint_m_useSolveConstraintObsolete_set (ff-pointer obj) arg0))

(cl:defmethod m_useSolveConstraintObsolete ((obj bt-point2-point-constraint))
  (btPoint2PointConstraint_m_useSolveConstraintObsolete_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_setting) (arg0 (obj bt-point2-point-constraint))
  (btPoint2PointConstraint_m_setting_set (ff-pointer obj) arg0))

(cl:defmethod m_setting ((obj bt-point2-point-constraint))
  (btPoint2PointConstraint_m_setting_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-point2-point-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (pivotInA bt-vector3) (pivotInB bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btPoint2PointConstraint rbA rbB pivotInA pivotInB)))

(cl:defmethod initialize-instance :after ((obj bt-point2-point-constraint) &key (rbA bt-rigid-body) (pivotInA bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btPoint2PointConstraint rbA pivotInA)))

(cl:defmethod build-jacobian ((self bt-point2-point-constraint))
  (btPoint2PointConstraint_buildJacobian (ff-pointer self)))

(cl:defmethod get-info1 ((self bt-point2-point-constraint) info)
  (btPoint2PointConstraint_getInfo1 (ff-pointer self) info))

(cl:defmethod get-info1-non-virtual ((self bt-point2-point-constraint) info)
  (btPoint2PointConstraint_getInfo1NonVirtual (ff-pointer self) info))

(cl:defmethod get-info2 ((self bt-point2-point-constraint) info)
  (btPoint2PointConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod get-info2-non-virtual ((self bt-point2-point-constraint) info (body0_trans bt-transform) (body1_trans bt-transform))
  (btPoint2PointConstraint_getInfo2NonVirtual (ff-pointer self) info body0_trans body1_trans))

(cl:defmethod update-rhs ((self bt-point2-point-constraint) (timeStep cl:number))
  (btPoint2PointConstraint_updateRHS (ff-pointer self) timeStep))

(cl:defmethod set-pivot-a ((self bt-point2-point-constraint) (pivotA bt-vector3))
  (btPoint2PointConstraint_setPivotA (ff-pointer self) pivotA))

(cl:defmethod set-pivot-b ((self bt-point2-point-constraint) (pivotB bt-vector3))
  (btPoint2PointConstraint_setPivotB (ff-pointer self) pivotB))

(cl:defmethod get-pivot-in-a ((self bt-point2-point-constraint))
  (btPoint2PointConstraint_getPivotInA (ff-pointer self)))

(cl:defmethod get-pivot-in-b ((self bt-point2-point-constraint))
  (btPoint2PointConstraint_getPivotInB (ff-pointer self)))

(cl:defmethod set-param ((self bt-point2-point-constraint) (num cl:integer) (value cl:number) (axis cl:integer))
  (btPoint2PointConstraint_setParam (ff-pointer self) num value axis))

(cl:defmethod set-param ((self bt-point2-point-constraint) (num cl:integer) (value cl:number))
  (btPoint2PointConstraint_setParam (ff-pointer self) num value))

(cl:defmethod get-param ((self bt-point2-point-constraint) (num cl:integer) (axis cl:integer))
  (btPoint2PointConstraint_getParam (ff-pointer self) num axis))

(cl:defmethod get-param ((self bt-point2-point-constraint) (num cl:integer))
  (btPoint2PointConstraint_getParam (ff-pointer self) num))

(cl:defmethod calculate-serialize-buffer-size ((self bt-point2-point-constraint))
  (btPoint2PointConstraint_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-point2-point-constraint) dataBuffer serializer)
  (btPoint2PointConstraint_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-hinge-constraint(btTypedConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (pivotInA bt-vector3) (pivotInB bt-vector3) (axisInA bt-vector3) (axisInB bt-vector3) (useReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA rbB pivotInA pivotInB axisInA axisInB useReferenceFrameA)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (pivotInA bt-vector3) (pivotInB bt-vector3) (axisInA bt-vector3) (axisInB bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA rbB pivotInA pivotInB axisInA axisInB)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (pivotInA bt-vector3) (axisInA bt-vector3) (useReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA pivotInA axisInA useReferenceFrameA)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (pivotInA bt-vector3) (axisInA bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA pivotInA axisInA)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (rbAFrame bt-transform) (rbBFrame bt-transform) (useReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA rbB rbAFrame rbBFrame useReferenceFrameA)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (rbAFrame bt-transform) (rbBFrame bt-transform))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA rbB rbAFrame rbBFrame)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (rbAFrame bt-transform) (useReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA rbAFrame useReferenceFrameA)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (rbAFrame bt-transform))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA rbAFrame)))

(cl:defmethod build-jacobian ((self bt-hinge-constraint))
  (btHingeConstraint_buildJacobian (ff-pointer self)))

(cl:defmethod get-info1 ((self bt-hinge-constraint) info)
  (btHingeConstraint_getInfo1 (ff-pointer self) info))

(cl:defmethod get-info1-non-virtual ((self bt-hinge-constraint) info)
  (btHingeConstraint_getInfo1NonVirtual (ff-pointer self) info))

(cl:defmethod get-info2 ((self bt-hinge-constraint) info)
  (btHingeConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod get-info2-non-virtual ((self bt-hinge-constraint) info (transA bt-transform) (transB bt-transform) (angVelA bt-vector3) (angVelB bt-vector3))
  (btHingeConstraint_getInfo2NonVirtual (ff-pointer self) info transA transB angVelA angVelB))

(cl:defmethod get-info2-internal ((self bt-hinge-constraint) info (transA bt-transform) (transB bt-transform) (angVelA bt-vector3) (angVelB bt-vector3))
  (btHingeConstraint_getInfo2Internal (ff-pointer self) info transA transB angVelA angVelB))

(cl:defmethod get-info2-internal-using-frame-offset ((self bt-hinge-constraint) info (transA bt-transform) (transB bt-transform) (angVelA bt-vector3) (angVelB bt-vector3))
  (btHingeConstraint_getInfo2InternalUsingFrameOffset (ff-pointer self) info transA transB angVelA angVelB))

(cl:defmethod update-rhs ((self bt-hinge-constraint) (timeStep cl:number))
  (btHingeConstraint_updateRHS (ff-pointer self) timeStep))

(cl:defmethod get-rigid-body-a ((self bt-hinge-constraint))
  (btHingeConstraint_getRigidBodyA (ff-pointer self)))

(cl:defmethod get-rigid-body-b ((self bt-hinge-constraint))
  (btHingeConstraint_getRigidBodyB (ff-pointer self)))

(cl:defmethod get-rigid-body-a ((self bt-hinge-constraint))
  (btHingeConstraint_getRigidBodyA (ff-pointer self)))

(cl:defmethod get-rigid-body-b ((self bt-hinge-constraint))
  (btHingeConstraint_getRigidBodyB (ff-pointer self)))

(cl:defmethod get-frame-offset-a ((self bt-hinge-constraint))
  (btHingeConstraint_getFrameOffsetA (ff-pointer self)))

(cl:defmethod get-frame-offset-b ((self bt-hinge-constraint))
  (btHingeConstraint_getFrameOffsetB (ff-pointer self)))

(cl:defmethod set-frames ((self bt-hinge-constraint) (frameA bt-transform) (frameB bt-transform))
  (btHingeConstraint_setFrames (ff-pointer self) frameA frameB))

(cl:defmethod set-angular-only ((self bt-hinge-constraint) (angularOnly t))
  (btHingeConstraint_setAngularOnly (ff-pointer self) angularOnly))

(cl:defmethod enable-angular-motor ((self bt-hinge-constraint) (enableMotor t) (targetVelocity cl:number) (maxMotorImpulse cl:number))
  (btHingeConstraint_enableAngularMotor (ff-pointer self) enableMotor targetVelocity maxMotorImpulse))

(cl:defmethod enable-motor ((self bt-hinge-constraint) (enableMotor t))
  (btHingeConstraint_enableMotor (ff-pointer self) enableMotor))

(cl:defmethod set-max-motor-impulse ((self bt-hinge-constraint) (maxMotorImpulse cl:number))
  (btHingeConstraint_setMaxMotorImpulse (ff-pointer self) maxMotorImpulse))

(cl:defmethod set-motor-target ((self bt-hinge-constraint) (qAinB bt-quaternion) (dt cl:number))
  (btHingeConstraint_setMotorTarget (ff-pointer self) qAinB dt))

(cl:defmethod set-motor-target ((self bt-hinge-constraint) (targetAngle cl:number) (dt cl:number))
  (btHingeConstraint_setMotorTarget (ff-pointer self) targetAngle dt))

(cl:defmethod set-limit ((self bt-hinge-constraint) (low cl:number) (high cl:number) (_softness cl:number) (_biasFactor cl:number) (_relaxationFactor cl:number))
  (btHingeConstraint_setLimit (ff-pointer self) low high _softness _biasFactor _relaxationFactor))

(cl:defmethod set-limit ((self bt-hinge-constraint) (low cl:number) (high cl:number) (_softness cl:number) (_biasFactor cl:number))
  (btHingeConstraint_setLimit (ff-pointer self) low high _softness _biasFactor))

(cl:defmethod set-limit ((self bt-hinge-constraint) (low cl:number) (high cl:number) (_softness cl:number))
  (btHingeConstraint_setLimit (ff-pointer self) low high _softness))

(cl:defmethod set-limit ((self bt-hinge-constraint) (low cl:number) (high cl:number))
  (btHingeConstraint_setLimit (ff-pointer self) low high))

(cl:defmethod set-axis ((self bt-hinge-constraint) (axisInA bt-vector3))
  (btHingeConstraint_setAxis (ff-pointer self) axisInA))

(cl:defmethod get-lower-limit ((self bt-hinge-constraint))
  (btHingeConstraint_getLowerLimit (ff-pointer self)))

(cl:defmethod get-upper-limit ((self bt-hinge-constraint))
  (btHingeConstraint_getUpperLimit (ff-pointer self)))

(cl:defmethod get-hinge-angle ((self bt-hinge-constraint))
  (btHingeConstraint_getHingeAngle (ff-pointer self)))

(cl:defmethod get-hinge-angle ((self bt-hinge-constraint) (transA bt-transform) (transB bt-transform))
  (btHingeConstraint_getHingeAngle (ff-pointer self) transA transB))

(cl:defmethod test-limit ((self bt-hinge-constraint) (transA bt-transform) (transB bt-transform))
  (btHingeConstraint_testLimit (ff-pointer self) transA transB))

(cl:defmethod get-aframe ((self bt-hinge-constraint))
  (btHingeConstraint_getAFrame (ff-pointer self)))

(cl:defmethod get-bframe ((self bt-hinge-constraint))
  (btHingeConstraint_getBFrame (ff-pointer self)))

(cl:defmethod get-aframe ((self bt-hinge-constraint))
  (btHingeConstraint_getAFrame (ff-pointer self)))

(cl:defmethod get-bframe ((self bt-hinge-constraint))
  (btHingeConstraint_getBFrame (ff-pointer self)))

(cl:defmethod get-solve-limit ((self bt-hinge-constraint))
  (btHingeConstraint_getSolveLimit (ff-pointer self)))

(cl:defmethod get-limit-sign ((self bt-hinge-constraint))
  (btHingeConstraint_getLimitSign (ff-pointer self)))

(cl:defmethod get-angular-only ((self bt-hinge-constraint))
  (btHingeConstraint_getAngularOnly (ff-pointer self)))

(cl:defmethod get-enable-angular-motor ((self bt-hinge-constraint))
  (btHingeConstraint_getEnableAngularMotor (ff-pointer self)))

(cl:defmethod get-motor-target-velosity ((self bt-hinge-constraint))
  (btHingeConstraint_getMotorTargetVelosity (ff-pointer self)))

(cl:defmethod get-max-motor-impulse ((self bt-hinge-constraint))
  (btHingeConstraint_getMaxMotorImpulse (ff-pointer self)))

(cl:defmethod get-use-frame-offset ((self bt-hinge-constraint))
  (btHingeConstraint_getUseFrameOffset (ff-pointer self)))

(cl:defmethod set-use-frame-offset ((self bt-hinge-constraint) (frameOffsetOnOff t))
  (btHingeConstraint_setUseFrameOffset (ff-pointer self) frameOffsetOnOff))

(cl:defmethod set-param ((self bt-hinge-constraint) (num cl:integer) (value cl:number) (axis cl:integer))
  (btHingeConstraint_setParam (ff-pointer self) num value axis))

(cl:defmethod set-param ((self bt-hinge-constraint) (num cl:integer) (value cl:number))
  (btHingeConstraint_setParam (ff-pointer self) num value))

(cl:defmethod get-param ((self bt-hinge-constraint) (num cl:integer) (axis cl:integer))
  (btHingeConstraint_getParam (ff-pointer self) num axis))

(cl:defmethod get-param ((self bt-hinge-constraint) (num cl:integer))
  (btHingeConstraint_getParam (ff-pointer self) num))

(cl:defmethod calculate-serialize-buffer-size ((self bt-hinge-constraint))
  (btHingeConstraint_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-hinge-constraint) dataBuffer serializer)
  (btHingeConstraint_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-cone-twist-constraint(btTypedConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-cone-twist-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (rbAFrame bt-transform) (rbBFrame bt-transform))
  (setf (slot-value obj 'ff-pointer) (new_btConeTwistConstraint_2 rbA rbB rbAFrame rbBFrame)))

(cl:defmethod initialize-instance :after ((obj bt-cone-twist-constraint) &key (rbA bt-rigid-body) (rbAFrame bt-transform))
  (setf (slot-value obj 'ff-pointer) (new_btConeTwistConstraint rbA rbAFrame)))

(cl:defmethod build-jacobian ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_buildJacobian (ff-pointer self)))

(cl:defmethod get-info1 ((self bt-cone-twist-constraint) info)
  (btConeTwistConstraint_getInfo1 (ff-pointer self) info))

(cl:defmethod get-info1-non-virtual ((self bt-cone-twist-constraint) info)
  (btConeTwistConstraint_getInfo1NonVirtual (ff-pointer self) info))

(cl:defmethod get-info2 ((self bt-cone-twist-constraint) info)
  (btConeTwistConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod get-info2-non-virtual ((self bt-cone-twist-constraint) info (transA bt-transform) (transB bt-transform) (invInertiaWorldA bt-matrix3x3) (invInertiaWorldB bt-matrix3x3))
  (btConeTwistConstraint_getInfo2NonVirtual (ff-pointer self) info transA transB invInertiaWorldA invInertiaWorldB))

(cl:defmethod solve-constraint-obsolete ((self bt-cone-twist-constraint) bodyA bodyB (timeStep cl:number))
  (btConeTwistConstraint_solveConstraintObsolete (ff-pointer self) bodyA bodyB timeStep))

(cl:defmethod update-rhs ((self bt-cone-twist-constraint) (timeStep cl:number))
  (btConeTwistConstraint_updateRHS (ff-pointer self) timeStep))

(cl:defmethod get-rigid-body-a ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getRigidBodyA (ff-pointer self)))

(cl:defmethod get-rigid-body-b ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getRigidBodyB (ff-pointer self)))

(cl:defmethod set-angular-only ((self bt-cone-twist-constraint) (angularOnly t))
  (btConeTwistConstraint_setAngularOnly (ff-pointer self) angularOnly))

(cl:defmethod set-limit ((self bt-cone-twist-constraint) (limitIndex cl:integer) (limitValue cl:number))
  (btConeTwistConstraint_setLimit (ff-pointer self) limitIndex limitValue))

(cl:defmethod set-limit ((self bt-cone-twist-constraint) (_swingSpan1 cl:number) (_swingSpan2 cl:number) (_twistSpan cl:number) (_softness cl:number) (_biasFactor cl:number) (_relaxationFactor cl:number))
  (btConeTwistConstraint_setLimit (ff-pointer self) _swingSpan1 _swingSpan2 _twistSpan _softness _biasFactor _relaxationFactor))

(cl:defmethod set-limit ((self bt-cone-twist-constraint) (_swingSpan1 cl:number) (_swingSpan2 cl:number) (_twistSpan cl:number) (_softness cl:number) (_biasFactor cl:number))
  (btConeTwistConstraint_setLimit (ff-pointer self) _swingSpan1 _swingSpan2 _twistSpan _softness _biasFactor))

(cl:defmethod set-limit ((self bt-cone-twist-constraint) (_swingSpan1 cl:number) (_swingSpan2 cl:number) (_twistSpan cl:number) (_softness cl:number))
  (btConeTwistConstraint_setLimit (ff-pointer self) _swingSpan1 _swingSpan2 _twistSpan _softness))

(cl:defmethod set-limit ((self bt-cone-twist-constraint) (_swingSpan1 cl:number) (_swingSpan2 cl:number) (_twistSpan cl:number))
  (btConeTwistConstraint_setLimit (ff-pointer self) _swingSpan1 _swingSpan2 _twistSpan))

(cl:defmethod get-aframe ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getAFrame (ff-pointer self)))

(cl:defmethod get-bframe ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getBFrame (ff-pointer self)))

(cl:defmethod get-solve-twist-limit ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getSolveTwistLimit (ff-pointer self)))

(cl:defmethod get-solve-swing-limit ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getSolveSwingLimit (ff-pointer self)))

(cl:defmethod get-twist-limit-sign ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getTwistLimitSign (ff-pointer self)))

(cl:defmethod calc-angle-info ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_calcAngleInfo (ff-pointer self)))

(cl:defmethod calc-angle-info2 ((self bt-cone-twist-constraint) (transA bt-transform) (transB bt-transform) (invInertiaWorldA bt-matrix3x3) (invInertiaWorldB bt-matrix3x3))
  (btConeTwistConstraint_calcAngleInfo2 (ff-pointer self) transA transB invInertiaWorldA invInertiaWorldB))

(cl:defmethod get-swing-span1 ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getSwingSpan1 (ff-pointer self)))

(cl:defmethod get-swing-span2 ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getSwingSpan2 (ff-pointer self)))

(cl:defmethod get-twist-span ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getTwistSpan (ff-pointer self)))

(cl:defmethod get-twist-angle ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getTwistAngle (ff-pointer self)))

(cl:defmethod is-past-swing-limit ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_isPastSwingLimit (ff-pointer self)))

(cl:defmethod set-damping ((self bt-cone-twist-constraint) (damping cl:number))
  (btConeTwistConstraint_setDamping (ff-pointer self) damping))

(cl:defmethod enable-motor ((self bt-cone-twist-constraint) (b t))
  (btConeTwistConstraint_enableMotor (ff-pointer self) b))

(cl:defmethod set-max-motor-impulse ((self bt-cone-twist-constraint) (maxMotorImpulse cl:number))
  (btConeTwistConstraint_setMaxMotorImpulse (ff-pointer self) maxMotorImpulse))

(cl:defmethod set-max-motor-impulse-normalized ((self bt-cone-twist-constraint) (maxMotorImpulse cl:number))
  (btConeTwistConstraint_setMaxMotorImpulseNormalized (ff-pointer self) maxMotorImpulse))

(cl:defmethod get-fix-thresh ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getFixThresh (ff-pointer self)))

(cl:defmethod set-fix-thresh ((self bt-cone-twist-constraint) (fixThresh cl:number))
  (btConeTwistConstraint_setFixThresh (ff-pointer self) fixThresh))

(cl:defmethod set-motor-target ((self bt-cone-twist-constraint) (q bt-quaternion))
  (btConeTwistConstraint_setMotorTarget (ff-pointer self) q))

(cl:defmethod set-motor-target-in-constraint-space ((self bt-cone-twist-constraint) (q bt-quaternion))
  (btConeTwistConstraint_setMotorTargetInConstraintSpace (ff-pointer self) q))

(cl:defmethod get-point-for-angle ((self bt-cone-twist-constraint) (fAngleInRadians cl:number) (fLength cl:number))
  (btConeTwistConstraint_GetPointForAngle (ff-pointer self) fAngleInRadians fLength))

(cl:defmethod set-param ((self bt-cone-twist-constraint) (num cl:integer) (value cl:number) (axis cl:integer))
  (btConeTwistConstraint_setParam (ff-pointer self) num value axis))

(cl:defmethod set-param ((self bt-cone-twist-constraint) (num cl:integer) (value cl:number))
  (btConeTwistConstraint_setParam (ff-pointer self) num value))

(cl:defmethod set-frames ((self bt-cone-twist-constraint) (frameA bt-transform) (frameB bt-transform))
  (btConeTwistConstraint_setFrames (ff-pointer self) frameA frameB))

(cl:defmethod get-frame-offset-a ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getFrameOffsetA (ff-pointer self)))

(cl:defmethod get-frame-offset-b ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getFrameOffsetB (ff-pointer self)))

(cl:defmethod get-param ((self bt-cone-twist-constraint) (num cl:integer) (axis cl:integer))
  (btConeTwistConstraint_getParam (ff-pointer self) num axis))

(cl:defmethod get-param ((self bt-cone-twist-constraint) (num cl:integer))
  (btConeTwistConstraint_getParam (ff-pointer self) num))

(cl:defmethod calculate-serialize-buffer-size ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-cone-twist-constraint) dataBuffer serializer)
  (btConeTwistConstraint_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-rotational-limit-motor()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_loLimit) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_loLimit_set (ff-pointer obj) arg0))

(cl:defmethod m_loLimit ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_loLimit_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_hiLimit) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_hiLimit_set (ff-pointer obj) arg0))

(cl:defmethod m_hiLimit ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_hiLimit_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_targetVelocity) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_targetVelocity_set (ff-pointer obj) arg0))

(cl:defmethod m_targetVelocity ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_targetVelocity_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_maxMotorForce) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_maxMotorForce_set (ff-pointer obj) arg0))

(cl:defmethod m_maxMotorForce ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_maxMotorForce_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_maxLimitForce) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_maxLimitForce_set (ff-pointer obj) arg0))

(cl:defmethod m_maxLimitForce ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_maxLimitForce_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_damping) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_damping_set (ff-pointer obj) arg0))

(cl:defmethod m_damping ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_damping_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_limitSoftness) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_limitSoftness_set (ff-pointer obj) arg0))

(cl:defmethod m_limitSoftness ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_limitSoftness_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_normalCFM) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_normalCFM_set (ff-pointer obj) arg0))

(cl:defmethod m_normalCFM ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_normalCFM_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_stopERP) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_stopERP_set (ff-pointer obj) arg0))

(cl:defmethod m_stopERP ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_stopERP_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_stopCFM) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_stopCFM_set (ff-pointer obj) arg0))

(cl:defmethod m_stopCFM ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_stopCFM_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_bounce) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_bounce_set (ff-pointer obj) arg0))

(cl:defmethod m_bounce ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_bounce_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_enableMotor) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_enableMotor_set (ff-pointer obj) arg0))

(cl:defmethod m_enableMotor ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_enableMotor_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_currentLimitError) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_currentLimitError_set (ff-pointer obj) arg0))

(cl:defmethod m_currentLimitError ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_currentLimitError_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_currentPosition) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_currentPosition_set (ff-pointer obj) arg0))

(cl:defmethod m_currentPosition ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_currentPosition_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_currentLimit) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_currentLimit_set (ff-pointer obj) arg0))

(cl:defmethod m_currentLimit ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_currentLimit_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_accumulatedImpulse) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_accumulatedImpulse_set (ff-pointer obj) arg0))

(cl:defmethod m_accumulatedImpulse ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_accumulatedImpulse_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-rotational-limit-motor) &key)
  (setf (slot-value obj 'ff-pointer) (new_btRotationalLimitMotor)))

(cl:defmethod initialize-instance :after ((obj bt-rotational-limit-motor) &key (limot bt-rotational-limit-motor))
  (setf (slot-value obj 'ff-pointer) (new_btRotationalLimitMotor (ff-pointer limot))))

(cl:defmethod is-limited ((self bt-rotational-limit-motor))
  (btRotationalLimitMotor_isLimited (ff-pointer self)))

(cl:defmethod need-apply-torques ((self bt-rotational-limit-motor))
  (btRotationalLimitMotor_needApplyTorques (ff-pointer self)))

(cl:defmethod test-limit-value ((self bt-rotational-limit-motor) (test_value cl:number))
  (btRotationalLimitMotor_testLimitValue (ff-pointer self) test_value))

(cl:defmethod solve-angular-limits ((self bt-rotational-limit-motor) (timeStep cl:number) (axis bt-vector3) (jacDiagABInv cl:number) (body0 bt-rigid-body) (body1 bt-rigid-body))
  (btRotationalLimitMotor_solveAngularLimits (ff-pointer self) timeStep axis jacDiagABInv body0 body1))


(cl:defclass bt-translational-limit-motor()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_lowerLimit) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_lowerLimit_set (ff-pointer obj) arg0))

(cl:defmethod m_lowerLimit ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_lowerLimit_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_upperLimit) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_upperLimit_set (ff-pointer obj) arg0))

(cl:defmethod m_upperLimit ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_upperLimit_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_accumulatedImpulse) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_accumulatedImpulse_set (ff-pointer obj) arg0))

(cl:defmethod m_accumulatedImpulse ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_accumulatedImpulse_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_limitSoftness) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_limitSoftness_set (ff-pointer obj) arg0))

(cl:defmethod m_limitSoftness ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_limitSoftness_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_damping) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_damping_set (ff-pointer obj) arg0))

(cl:defmethod m_damping ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_damping_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_restitution) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_restitution_set (ff-pointer obj) arg0))

(cl:defmethod m_restitution ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_restitution_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_normalCFM) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_normalCFM_set (ff-pointer obj) arg0))

(cl:defmethod m_normalCFM ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_normalCFM_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_stopERP) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_stopERP_set (ff-pointer obj) arg0))

(cl:defmethod m_stopERP ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_stopERP_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_stopCFM) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_stopCFM_set (ff-pointer obj) arg0))

(cl:defmethod m_stopCFM ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_stopCFM_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_enableMotor) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_enableMotor_set (ff-pointer obj) arg0))

(cl:defmethod m_enableMotor ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_enableMotor_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_targetVelocity) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_targetVelocity_set (ff-pointer obj) arg0))

(cl:defmethod m_targetVelocity ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_targetVelocity_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_maxMotorForce) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_maxMotorForce_set (ff-pointer obj) arg0))

(cl:defmethod m_maxMotorForce ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_maxMotorForce_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_currentLimitError) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_currentLimitError_set (ff-pointer obj) arg0))

(cl:defmethod m_currentLimitError ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_currentLimitError_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_currentLinearDiff) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_currentLinearDiff_set (ff-pointer obj) arg0))

(cl:defmethod m_currentLinearDiff ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_currentLinearDiff_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_currentLimit) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_currentLimit_set (ff-pointer obj) arg0))

(cl:defmethod m_currentLimit ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_currentLimit_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-translational-limit-motor) &key)
  (setf (slot-value obj 'ff-pointer) (new_btTranslationalLimitMotor)))

(cl:defmethod initialize-instance :after ((obj bt-translational-limit-motor) &key (other bt-translational-limit-motor))
  (setf (slot-value obj 'ff-pointer) (new_btTranslationalLimitMotor (ff-pointer other))))

(cl:defmethod is-limited ((self bt-translational-limit-motor) (limitIndex cl:integer))
  (btTranslationalLimitMotor_isLimited (ff-pointer self) limitIndex))

(cl:defmethod need-apply-force ((self bt-translational-limit-motor) (limitIndex cl:integer))
  (btTranslationalLimitMotor_needApplyForce (ff-pointer self) limitIndex))

(cl:defmethod test-limit-value ((self bt-translational-limit-motor) (limitIndex cl:integer) (test_value cl:number))
  (btTranslationalLimitMotor_testLimitValue (ff-pointer self) limitIndex test_value))

(cl:defmethod solve-linear-axis ((self bt-translational-limit-motor) (timeStep cl:number) (jacDiagABInv cl:number) (body1 bt-rigid-body) (pointInA bt-vector3) (body2 bt-rigid-body) (pointInB bt-vector3) (limit_index cl:integer) (axis_normal_on_a bt-vector3) (anchorPos bt-vector3))
  (btTranslationalLimitMotor_solveLinearAxis (ff-pointer self) timeStep jacDiagABInv body1 pointInA body2 pointInB limit_index axis_normal_on_a anchorPos))


(cl:defclass bt-generic6-dof-constraint(btTypedConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_useSolveConstraintObsolete) (arg0 (obj bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_m_useSolveConstraintObsolete_set (ff-pointer obj) arg0))

(cl:defmethod m_useSolveConstraintObsolete ((obj bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_m_useSolveConstraintObsolete_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-generic6-dof-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (frameInA bt-transform) (frameInB bt-transform) (useLinearReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btGeneric6DofConstraint rbA rbB frameInA frameInB useLinearReferenceFrameA)))

(cl:defmethod initialize-instance :after ((obj bt-generic6-dof-constraint) &key (rbB bt-rigid-body) (frameInB bt-transform) (useLinearReferenceFrameB t))
  (setf (slot-value obj 'ff-pointer) (new_btGeneric6DofConstraint rbB frameInB useLinearReferenceFrameB)))

(cl:defmethod calculate-transforms ((self bt-generic6-dof-constraint) (transA bt-transform) (transB bt-transform))
  (btGeneric6DofConstraint_calculateTransforms (ff-pointer self) transA transB))

(cl:defmethod calculate-transforms ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_calculateTransforms (ff-pointer self)))

(cl:defmethod get-calculated-transform-a ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getCalculatedTransformA (ff-pointer self)))

(cl:defmethod get-calculated-transform-b ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getCalculatedTransformB (ff-pointer self)))

(cl:defmethod get-frame-offset-a ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getFrameOffsetA (ff-pointer self)))

(cl:defmethod get-frame-offset-b ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getFrameOffsetB (ff-pointer self)))

(cl:defmethod get-frame-offset-a ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getFrameOffsetA (ff-pointer self)))

(cl:defmethod get-frame-offset-b ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getFrameOffsetB (ff-pointer self)))

(cl:defmethod build-jacobian ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_buildJacobian (ff-pointer self)))

(cl:defmethod get-info1 ((self bt-generic6-dof-constraint) info)
  (btGeneric6DofConstraint_getInfo1 (ff-pointer self) info))

(cl:defmethod get-info1-non-virtual ((self bt-generic6-dof-constraint) info)
  (btGeneric6DofConstraint_getInfo1NonVirtual (ff-pointer self) info))

(cl:defmethod get-info2 ((self bt-generic6-dof-constraint) info)
  (btGeneric6DofConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod get-info2-non-virtual ((self bt-generic6-dof-constraint) info (transA bt-transform) (transB bt-transform) (linVelA bt-vector3) (linVelB bt-vector3) (angVelA bt-vector3) (angVelB bt-vector3))
  (btGeneric6DofConstraint_getInfo2NonVirtual (ff-pointer self) info transA transB linVelA linVelB angVelA angVelB))

(cl:defmethod update-rhs ((self bt-generic6-dof-constraint) (timeStep cl:number))
  (btGeneric6DofConstraint_updateRHS (ff-pointer self) timeStep))

(cl:defmethod get-axis ((self bt-generic6-dof-constraint) (axis_index cl:integer))
  (btGeneric6DofConstraint_getAxis (ff-pointer self) axis_index))

(cl:defmethod get-angle ((self bt-generic6-dof-constraint) (axis_index cl:integer))
  (btGeneric6DofConstraint_getAngle (ff-pointer self) axis_index))

(cl:defmethod get-relative-pivot-position ((self bt-generic6-dof-constraint) (axis_index cl:integer))
  (btGeneric6DofConstraint_getRelativePivotPosition (ff-pointer self) axis_index))

(cl:defmethod set-frames ((self bt-generic6-dof-constraint) (frameA bt-transform) (frameB bt-transform))
  (btGeneric6DofConstraint_setFrames (ff-pointer self) frameA frameB))

(cl:defmethod test-angular-limit-motor ((self bt-generic6-dof-constraint) (axis_index cl:integer))
  (btGeneric6DofConstraint_testAngularLimitMotor (ff-pointer self) axis_index))

(cl:defmethod set-linear-lower-limit ((self bt-generic6-dof-constraint) (linearLower bt-vector3))
  (btGeneric6DofConstraint_setLinearLowerLimit (ff-pointer self) linearLower))

(cl:defmethod get-linear-lower-limit ((self bt-generic6-dof-constraint) (linearLower bt-vector3))
  (btGeneric6DofConstraint_getLinearLowerLimit (ff-pointer self) linearLower))

(cl:defmethod set-linear-upper-limit ((self bt-generic6-dof-constraint) (linearUpper bt-vector3))
  (btGeneric6DofConstraint_setLinearUpperLimit (ff-pointer self) linearUpper))

(cl:defmethod get-linear-upper-limit ((self bt-generic6-dof-constraint) (linearUpper bt-vector3))
  (btGeneric6DofConstraint_getLinearUpperLimit (ff-pointer self) linearUpper))

(cl:defmethod set-angular-lower-limit ((self bt-generic6-dof-constraint) (angularLower bt-vector3))
  (btGeneric6DofConstraint_setAngularLowerLimit (ff-pointer self) angularLower))

(cl:defmethod get-angular-lower-limit ((self bt-generic6-dof-constraint) (angularLower bt-vector3))
  (btGeneric6DofConstraint_getAngularLowerLimit (ff-pointer self) angularLower))

(cl:defmethod set-angular-upper-limit ((self bt-generic6-dof-constraint) (angularUpper bt-vector3))
  (btGeneric6DofConstraint_setAngularUpperLimit (ff-pointer self) angularUpper))

(cl:defmethod get-angular-upper-limit ((self bt-generic6-dof-constraint) (angularUpper bt-vector3))
  (btGeneric6DofConstraint_getAngularUpperLimit (ff-pointer self) angularUpper))

(cl:defmethod get-rotational-limit-motor ((self bt-generic6-dof-constraint) (index cl:integer))
  (btGeneric6DofConstraint_getRotationalLimitMotor (ff-pointer self) index))

(cl:defmethod get-translational-limit-motor ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getTranslationalLimitMotor (ff-pointer self)))

(cl:defmethod set-limit ((self bt-generic6-dof-constraint) (axis cl:integer) (lo cl:number) (hi cl:number))
  (btGeneric6DofConstraint_setLimit (ff-pointer self) axis lo hi))

(cl:defmethod is-limited ((self bt-generic6-dof-constraint) (limitIndex cl:integer))
  (btGeneric6DofConstraint_isLimited (ff-pointer self) limitIndex))

(cl:defmethod calc-anchor-pos ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_calcAnchorPos (ff-pointer self)))

(cl:defmethod get-limit-motor-info2 ((self bt-generic6-dof-constraint) (limot bt-rotational-limit-motor) (transA bt-transform) (transB bt-transform) (linVelA bt-vector3) (linVelB bt-vector3) (angVelA bt-vector3) (angVelB bt-vector3) info (row cl:integer) (ax1 bt-vector3) (rotational cl:integer) (rotAllowed cl:integer))
  (btGeneric6DofConstraint_get_limit_motor_info2 (ff-pointer self) limot transA transB linVelA linVelB angVelA angVelB info row ax1 rotational rotAllowed))

(cl:defmethod get-limit-motor-info2 ((self bt-generic6-dof-constraint) (limot bt-rotational-limit-motor) (transA bt-transform) (transB bt-transform) (linVelA bt-vector3) (linVelB bt-vector3) (angVelA bt-vector3) (angVelB bt-vector3) info (row cl:integer) (ax1 bt-vector3) (rotational cl:integer))
  (btGeneric6DofConstraint_get_limit_motor_info2 (ff-pointer self) limot transA transB linVelA linVelB angVelA angVelB info row ax1 rotational))

(cl:defmethod get-use-frame-offset ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getUseFrameOffset (ff-pointer self)))

(cl:defmethod set-use-frame-offset ((self bt-generic6-dof-constraint) (frameOffsetOnOff t))
  (btGeneric6DofConstraint_setUseFrameOffset (ff-pointer self) frameOffsetOnOff))

(cl:defmethod set-param ((self bt-generic6-dof-constraint) (num cl:integer) (value cl:number) (axis cl:integer))
  (btGeneric6DofConstraint_setParam (ff-pointer self) num value axis))

(cl:defmethod set-param ((self bt-generic6-dof-constraint) (num cl:integer) (value cl:number))
  (btGeneric6DofConstraint_setParam (ff-pointer self) num value))

(cl:defmethod get-param ((self bt-generic6-dof-constraint) (num cl:integer) (axis cl:integer))
  (btGeneric6DofConstraint_getParam (ff-pointer self) num axis))

(cl:defmethod get-param ((self bt-generic6-dof-constraint) (num cl:integer))
  (btGeneric6DofConstraint_getParam (ff-pointer self) num))

(cl:defmethod set-axis ((self bt-generic6-dof-constraint) (axis1 bt-vector3) (axis2 bt-vector3))
  (btGeneric6DofConstraint_setAxis (ff-pointer self) axis1 axis2))

(cl:defmethod calculate-serialize-buffer-size ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-generic6-dof-constraint) dataBuffer serializer)
  (btGeneric6DofConstraint_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-slider-constraint(btTypedConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-slider-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (frameInA bt-transform) (frameInB bt-transform) (useLinearReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btSliderConstraint rbA rbB frameInA frameInB useLinearReferenceFrameA)))

(cl:defmethod initialize-instance :after ((obj bt-slider-constraint) &key (rbB bt-rigid-body) (frameInB bt-transform) (useLinearReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btSliderConstraint rbB frameInB useLinearReferenceFrameA)))

(cl:defmethod get-info1 ((self bt-slider-constraint) info)
  (btSliderConstraint_getInfo1 (ff-pointer self) info))

(cl:defmethod get-info1-non-virtual ((self bt-slider-constraint) info)
  (btSliderConstraint_getInfo1NonVirtual (ff-pointer self) info))

(cl:defmethod get-info2 ((self bt-slider-constraint) info)
  (btSliderConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod get-info2-non-virtual ((self bt-slider-constraint) info (transA bt-transform) (transB bt-transform) (linVelA bt-vector3) (linVelB bt-vector3) (rbAinvMass cl:number) (rbBinvMass cl:number))
  (btSliderConstraint_getInfo2NonVirtual (ff-pointer self) info transA transB linVelA linVelB rbAinvMass rbBinvMass))

(cl:defmethod get-rigid-body-a ((self bt-slider-constraint))
  (btSliderConstraint_getRigidBodyA (ff-pointer self)))

(cl:defmethod get-rigid-body-b ((self bt-slider-constraint))
  (btSliderConstraint_getRigidBodyB (ff-pointer self)))

(cl:defmethod get-calculated-transform-a ((self bt-slider-constraint))
  (btSliderConstraint_getCalculatedTransformA (ff-pointer self)))

(cl:defmethod get-calculated-transform-b ((self bt-slider-constraint))
  (btSliderConstraint_getCalculatedTransformB (ff-pointer self)))

(cl:defmethod get-frame-offset-a ((self bt-slider-constraint))
  (btSliderConstraint_getFrameOffsetA (ff-pointer self)))

(cl:defmethod get-frame-offset-b ((self bt-slider-constraint))
  (btSliderConstraint_getFrameOffsetB (ff-pointer self)))

(cl:defmethod get-frame-offset-a ((self bt-slider-constraint))
  (btSliderConstraint_getFrameOffsetA (ff-pointer self)))

(cl:defmethod get-frame-offset-b ((self bt-slider-constraint))
  (btSliderConstraint_getFrameOffsetB (ff-pointer self)))

(cl:defmethod get-lower-lin-limit ((self bt-slider-constraint))
  (btSliderConstraint_getLowerLinLimit (ff-pointer self)))

(cl:defmethod set-lower-lin-limit ((self bt-slider-constraint) (lowerLimit cl:number))
  (btSliderConstraint_setLowerLinLimit (ff-pointer self) lowerLimit))

(cl:defmethod get-upper-lin-limit ((self bt-slider-constraint))
  (btSliderConstraint_getUpperLinLimit (ff-pointer self)))

(cl:defmethod set-upper-lin-limit ((self bt-slider-constraint) (upperLimit cl:number))
  (btSliderConstraint_setUpperLinLimit (ff-pointer self) upperLimit))

(cl:defmethod get-lower-ang-limit ((self bt-slider-constraint))
  (btSliderConstraint_getLowerAngLimit (ff-pointer self)))

(cl:defmethod set-lower-ang-limit ((self bt-slider-constraint) (lowerLimit cl:number))
  (btSliderConstraint_setLowerAngLimit (ff-pointer self) lowerLimit))

(cl:defmethod get-upper-ang-limit ((self bt-slider-constraint))
  (btSliderConstraint_getUpperAngLimit (ff-pointer self)))

(cl:defmethod set-upper-ang-limit ((self bt-slider-constraint) (upperLimit cl:number))
  (btSliderConstraint_setUpperAngLimit (ff-pointer self) upperLimit))

(cl:defmethod get-use-linear-reference-frame-a ((self bt-slider-constraint))
  (btSliderConstraint_getUseLinearReferenceFrameA (ff-pointer self)))

(cl:defmethod get-softness-dir-lin ((self bt-slider-constraint))
  (btSliderConstraint_getSoftnessDirLin (ff-pointer self)))

(cl:defmethod get-restitution-dir-lin ((self bt-slider-constraint))
  (btSliderConstraint_getRestitutionDirLin (ff-pointer self)))

(cl:defmethod get-damping-dir-lin ((self bt-slider-constraint))
  (btSliderConstraint_getDampingDirLin (ff-pointer self)))

(cl:defmethod get-softness-dir-ang ((self bt-slider-constraint))
  (btSliderConstraint_getSoftnessDirAng (ff-pointer self)))

(cl:defmethod get-restitution-dir-ang ((self bt-slider-constraint))
  (btSliderConstraint_getRestitutionDirAng (ff-pointer self)))

(cl:defmethod get-damping-dir-ang ((self bt-slider-constraint))
  (btSliderConstraint_getDampingDirAng (ff-pointer self)))

(cl:defmethod get-softness-lim-lin ((self bt-slider-constraint))
  (btSliderConstraint_getSoftnessLimLin (ff-pointer self)))

(cl:defmethod get-restitution-lim-lin ((self bt-slider-constraint))
  (btSliderConstraint_getRestitutionLimLin (ff-pointer self)))

(cl:defmethod get-damping-lim-lin ((self bt-slider-constraint))
  (btSliderConstraint_getDampingLimLin (ff-pointer self)))

(cl:defmethod get-softness-lim-ang ((self bt-slider-constraint))
  (btSliderConstraint_getSoftnessLimAng (ff-pointer self)))

(cl:defmethod get-restitution-lim-ang ((self bt-slider-constraint))
  (btSliderConstraint_getRestitutionLimAng (ff-pointer self)))

(cl:defmethod get-damping-lim-ang ((self bt-slider-constraint))
  (btSliderConstraint_getDampingLimAng (ff-pointer self)))

(cl:defmethod get-softness-ortho-lin ((self bt-slider-constraint))
  (btSliderConstraint_getSoftnessOrthoLin (ff-pointer self)))

(cl:defmethod get-restitution-ortho-lin ((self bt-slider-constraint))
  (btSliderConstraint_getRestitutionOrthoLin (ff-pointer self)))

(cl:defmethod get-damping-ortho-lin ((self bt-slider-constraint))
  (btSliderConstraint_getDampingOrthoLin (ff-pointer self)))

(cl:defmethod get-softness-ortho-ang ((self bt-slider-constraint))
  (btSliderConstraint_getSoftnessOrthoAng (ff-pointer self)))

(cl:defmethod get-restitution-ortho-ang ((self bt-slider-constraint))
  (btSliderConstraint_getRestitutionOrthoAng (ff-pointer self)))

(cl:defmethod get-damping-ortho-ang ((self bt-slider-constraint))
  (btSliderConstraint_getDampingOrthoAng (ff-pointer self)))

(cl:defmethod set-softness-dir-lin ((self bt-slider-constraint) (softnessDirLin cl:number))
  (btSliderConstraint_setSoftnessDirLin (ff-pointer self) softnessDirLin))

(cl:defmethod set-restitution-dir-lin ((self bt-slider-constraint) (restitutionDirLin cl:number))
  (btSliderConstraint_setRestitutionDirLin (ff-pointer self) restitutionDirLin))

(cl:defmethod set-damping-dir-lin ((self bt-slider-constraint) (dampingDirLin cl:number))
  (btSliderConstraint_setDampingDirLin (ff-pointer self) dampingDirLin))

(cl:defmethod set-softness-dir-ang ((self bt-slider-constraint) (softnessDirAng cl:number))
  (btSliderConstraint_setSoftnessDirAng (ff-pointer self) softnessDirAng))

(cl:defmethod set-restitution-dir-ang ((self bt-slider-constraint) (restitutionDirAng cl:number))
  (btSliderConstraint_setRestitutionDirAng (ff-pointer self) restitutionDirAng))

(cl:defmethod set-damping-dir-ang ((self bt-slider-constraint) (dampingDirAng cl:number))
  (btSliderConstraint_setDampingDirAng (ff-pointer self) dampingDirAng))

(cl:defmethod set-softness-lim-lin ((self bt-slider-constraint) (softnessLimLin cl:number))
  (btSliderConstraint_setSoftnessLimLin (ff-pointer self) softnessLimLin))

(cl:defmethod set-restitution-lim-lin ((self bt-slider-constraint) (restitutionLimLin cl:number))
  (btSliderConstraint_setRestitutionLimLin (ff-pointer self) restitutionLimLin))

(cl:defmethod set-damping-lim-lin ((self bt-slider-constraint) (dampingLimLin cl:number))
  (btSliderConstraint_setDampingLimLin (ff-pointer self) dampingLimLin))

(cl:defmethod set-softness-lim-ang ((self bt-slider-constraint) (softnessLimAng cl:number))
  (btSliderConstraint_setSoftnessLimAng (ff-pointer self) softnessLimAng))

(cl:defmethod set-restitution-lim-ang ((self bt-slider-constraint) (restitutionLimAng cl:number))
  (btSliderConstraint_setRestitutionLimAng (ff-pointer self) restitutionLimAng))

(cl:defmethod set-damping-lim-ang ((self bt-slider-constraint) (dampingLimAng cl:number))
  (btSliderConstraint_setDampingLimAng (ff-pointer self) dampingLimAng))

(cl:defmethod set-softness-ortho-lin ((self bt-slider-constraint) (softnessOrthoLin cl:number))
  (btSliderConstraint_setSoftnessOrthoLin (ff-pointer self) softnessOrthoLin))

(cl:defmethod set-restitution-ortho-lin ((self bt-slider-constraint) (restitutionOrthoLin cl:number))
  (btSliderConstraint_setRestitutionOrthoLin (ff-pointer self) restitutionOrthoLin))

(cl:defmethod set-damping-ortho-lin ((self bt-slider-constraint) (dampingOrthoLin cl:number))
  (btSliderConstraint_setDampingOrthoLin (ff-pointer self) dampingOrthoLin))

(cl:defmethod set-softness-ortho-ang ((self bt-slider-constraint) (softnessOrthoAng cl:number))
  (btSliderConstraint_setSoftnessOrthoAng (ff-pointer self) softnessOrthoAng))

(cl:defmethod set-restitution-ortho-ang ((self bt-slider-constraint) (restitutionOrthoAng cl:number))
  (btSliderConstraint_setRestitutionOrthoAng (ff-pointer self) restitutionOrthoAng))

(cl:defmethod set-damping-ortho-ang ((self bt-slider-constraint) (dampingOrthoAng cl:number))
  (btSliderConstraint_setDampingOrthoAng (ff-pointer self) dampingOrthoAng))

(cl:defmethod set-powered-lin-motor ((self bt-slider-constraint) (onOff t))
  (btSliderConstraint_setPoweredLinMotor (ff-pointer self) onOff))

(cl:defmethod get-powered-lin-motor ((self bt-slider-constraint))
  (btSliderConstraint_getPoweredLinMotor (ff-pointer self)))

(cl:defmethod set-target-lin-motor-velocity ((self bt-slider-constraint) (targetLinMotorVelocity cl:number))
  (btSliderConstraint_setTargetLinMotorVelocity (ff-pointer self) targetLinMotorVelocity))

(cl:defmethod get-target-lin-motor-velocity ((self bt-slider-constraint))
  (btSliderConstraint_getTargetLinMotorVelocity (ff-pointer self)))

(cl:defmethod set-max-lin-motor-force ((self bt-slider-constraint) (maxLinMotorForce cl:number))
  (btSliderConstraint_setMaxLinMotorForce (ff-pointer self) maxLinMotorForce))

(cl:defmethod get-max-lin-motor-force ((self bt-slider-constraint))
  (btSliderConstraint_getMaxLinMotorForce (ff-pointer self)))

(cl:defmethod set-powered-ang-motor ((self bt-slider-constraint) (onOff t))
  (btSliderConstraint_setPoweredAngMotor (ff-pointer self) onOff))

(cl:defmethod get-powered-ang-motor ((self bt-slider-constraint))
  (btSliderConstraint_getPoweredAngMotor (ff-pointer self)))

(cl:defmethod set-target-ang-motor-velocity ((self bt-slider-constraint) (targetAngMotorVelocity cl:number))
  (btSliderConstraint_setTargetAngMotorVelocity (ff-pointer self) targetAngMotorVelocity))

(cl:defmethod get-target-ang-motor-velocity ((self bt-slider-constraint))
  (btSliderConstraint_getTargetAngMotorVelocity (ff-pointer self)))

(cl:defmethod set-max-ang-motor-force ((self bt-slider-constraint) (maxAngMotorForce cl:number))
  (btSliderConstraint_setMaxAngMotorForce (ff-pointer self) maxAngMotorForce))

(cl:defmethod get-max-ang-motor-force ((self bt-slider-constraint))
  (btSliderConstraint_getMaxAngMotorForce (ff-pointer self)))

(cl:defmethod get-linear-pos ((self bt-slider-constraint))
  (btSliderConstraint_getLinearPos (ff-pointer self)))

(cl:defmethod get-angular-pos ((self bt-slider-constraint))
  (btSliderConstraint_getAngularPos (ff-pointer self)))

(cl:defmethod get-solve-lin-limit ((self bt-slider-constraint))
  (btSliderConstraint_getSolveLinLimit (ff-pointer self)))

(cl:defmethod get-lin-depth ((self bt-slider-constraint))
  (btSliderConstraint_getLinDepth (ff-pointer self)))

(cl:defmethod get-solve-ang-limit ((self bt-slider-constraint))
  (btSliderConstraint_getSolveAngLimit (ff-pointer self)))

(cl:defmethod get-ang-depth ((self bt-slider-constraint))
  (btSliderConstraint_getAngDepth (ff-pointer self)))

(cl:defmethod calculate-transforms ((self bt-slider-constraint) (transA bt-transform) (transB bt-transform))
  (btSliderConstraint_calculateTransforms (ff-pointer self) transA transB))

(cl:defmethod test-lin-limits ((self bt-slider-constraint))
  (btSliderConstraint_testLinLimits (ff-pointer self)))

(cl:defmethod test-ang-limits ((self bt-slider-constraint))
  (btSliderConstraint_testAngLimits (ff-pointer self)))

(cl:defmethod get-ancor-in-a ((self bt-slider-constraint))
  (btSliderConstraint_getAncorInA (ff-pointer self)))

(cl:defmethod get-ancor-in-b ((self bt-slider-constraint))
  (btSliderConstraint_getAncorInB (ff-pointer self)))

(cl:defmethod get-use-frame-offset ((self bt-slider-constraint))
  (btSliderConstraint_getUseFrameOffset (ff-pointer self)))

(cl:defmethod set-use-frame-offset ((self bt-slider-constraint) (frameOffsetOnOff t))
  (btSliderConstraint_setUseFrameOffset (ff-pointer self) frameOffsetOnOff))

(cl:defmethod set-frames ((self bt-slider-constraint) (frameA bt-transform) (frameB bt-transform))
  (btSliderConstraint_setFrames (ff-pointer self) frameA frameB))

(cl:defmethod set-param ((self bt-slider-constraint) (num cl:integer) (value cl:number) (axis cl:integer))
  (btSliderConstraint_setParam (ff-pointer self) num value axis))

(cl:defmethod set-param ((self bt-slider-constraint) (num cl:integer) (value cl:number))
  (btSliderConstraint_setParam (ff-pointer self) num value))

(cl:defmethod get-param ((self bt-slider-constraint) (num cl:integer) (axis cl:integer))
  (btSliderConstraint_getParam (ff-pointer self) num axis))

(cl:defmethod get-param ((self bt-slider-constraint) (num cl:integer))
  (btSliderConstraint_getParam (ff-pointer self) num))

(cl:defmethod calculate-serialize-buffer-size ((self bt-slider-constraint))
  (btSliderConstraint_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-slider-constraint) dataBuffer serializer)
  (btSliderConstraint_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-generic6-dof-spring-constraint(btGeneric6DofConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-generic6-dof-spring-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (frameInA bt-transform) (frameInB bt-transform) (useLinearReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btGeneric6DofSpringConstraint rbA rbB frameInA frameInB useLinearReferenceFrameA)))

(cl:defmethod initialize-instance :after ((obj bt-generic6-dof-spring-constraint) &key (rbB bt-rigid-body) (frameInB bt-transform) (useLinearReferenceFrameB t))
  (setf (slot-value obj 'ff-pointer) (new_btGeneric6DofSpringConstraint rbB frameInB useLinearReferenceFrameB)))

(cl:defmethod enable-spring ((self bt-generic6-dof-spring-constraint) (index cl:integer) (onOff t))
  (btGeneric6DofSpringConstraint_enableSpring (ff-pointer self) index onOff))

(cl:defmethod set-stiffness ((self bt-generic6-dof-spring-constraint) (index cl:integer) (stiffness cl:number))
  (btGeneric6DofSpringConstraint_setStiffness (ff-pointer self) index stiffness))

(cl:defmethod set-damping ((self bt-generic6-dof-spring-constraint) (index cl:integer) (damping cl:number))
  (btGeneric6DofSpringConstraint_setDamping (ff-pointer self) index damping))

(cl:defmethod set-equilibrium-point ((self bt-generic6-dof-spring-constraint))
  (btGeneric6DofSpringConstraint_setEquilibriumPoint (ff-pointer self)))

(cl:defmethod set-equilibrium-point ((self bt-generic6-dof-spring-constraint) (index cl:integer))
  (btGeneric6DofSpringConstraint_setEquilibriumPoint (ff-pointer self) index))

(cl:defmethod set-equilibrium-point ((self bt-generic6-dof-spring-constraint) (index cl:integer) (val cl:number))
  (btGeneric6DofSpringConstraint_setEquilibriumPoint (ff-pointer self) index val))

(cl:defmethod set-axis ((self bt-generic6-dof-spring-constraint) (axis1 bt-vector3) (axis2 bt-vector3))
  (btGeneric6DofSpringConstraint_setAxis (ff-pointer self) axis1 axis2))

(cl:defmethod get-info2 ((self bt-generic6-dof-spring-constraint) info)
  (btGeneric6DofSpringConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod calculate-serialize-buffer-size ((self bt-generic6-dof-spring-constraint))
  (btGeneric6DofSpringConstraint_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-generic6-dof-spring-constraint) dataBuffer serializer)
  (btGeneric6DofSpringConstraint_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-universal-constraint(btGeneric6DofConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-universal-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (anchor bt-vector3) (axis1 bt-vector3) (axis2 bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btUniversalConstraint rbA rbB anchor axis1 axis2)))

(cl:defmethod get-anchor ((self bt-universal-constraint))
  (btUniversalConstraint_getAnchor (ff-pointer self)))

(cl:defmethod get-anchor2 ((self bt-universal-constraint))
  (btUniversalConstraint_getAnchor2 (ff-pointer self)))

(cl:defmethod get-axis1 ((self bt-universal-constraint))
  (btUniversalConstraint_getAxis1 (ff-pointer self)))

(cl:defmethod get-axis2 ((self bt-universal-constraint))
  (btUniversalConstraint_getAxis2 (ff-pointer self)))

(cl:defmethod get-angle1 ((self bt-universal-constraint))
  (btUniversalConstraint_getAngle1 (ff-pointer self)))

(cl:defmethod get-angle2 ((self bt-universal-constraint))
  (btUniversalConstraint_getAngle2 (ff-pointer self)))

(cl:defmethod set-upper-limit ((self bt-universal-constraint) (ang1max cl:number) (ang2max cl:number))
  (btUniversalConstraint_setUpperLimit (ff-pointer self) ang1max ang2max))

(cl:defmethod set-lower-limit ((self bt-universal-constraint) (ang1min cl:number) (ang2min cl:number))
  (btUniversalConstraint_setLowerLimit (ff-pointer self) ang1min ang2min))

(cl:defmethod set-axis ((self bt-universal-constraint) (axis1 bt-vector3) (axis2 bt-vector3))
  (btUniversalConstraint_setAxis (ff-pointer self) axis1 axis2))


(cl:defclass bt-hinge2-constraint(btGeneric6DofSpringConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-hinge2-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (anchor bt-vector3) (axis1 bt-vector3) (axis2 bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btHinge2Constraint rbA rbB anchor axis1 axis2)))

(cl:defmethod get-anchor ((self bt-hinge2-constraint))
  (btHinge2Constraint_getAnchor (ff-pointer self)))

(cl:defmethod get-anchor2 ((self bt-hinge2-constraint))
  (btHinge2Constraint_getAnchor2 (ff-pointer self)))

(cl:defmethod get-axis1 ((self bt-hinge2-constraint))
  (btHinge2Constraint_getAxis1 (ff-pointer self)))

(cl:defmethod get-axis2 ((self bt-hinge2-constraint))
  (btHinge2Constraint_getAxis2 (ff-pointer self)))

(cl:defmethod get-angle1 ((self bt-hinge2-constraint))
  (btHinge2Constraint_getAngle1 (ff-pointer self)))

(cl:defmethod get-angle2 ((self bt-hinge2-constraint))
  (btHinge2Constraint_getAngle2 (ff-pointer self)))

(cl:defmethod set-upper-limit ((self bt-hinge2-constraint) (ang1max cl:number))
  (btHinge2Constraint_setUpperLimit (ff-pointer self) ang1max))

(cl:defmethod set-lower-limit ((self bt-hinge2-constraint) (ang1min cl:number))
  (btHinge2Constraint_setLowerLimit (ff-pointer self) ang1min))


(cl:defclass bt-sequential-impulse-constraint-solver(btConstraintSolver)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-sequential-impulse-constraint-solver) &key)
  (setf (slot-value obj 'ff-pointer) (new_btSequentialImpulseConstraintSolver)))

(cl:defmethod solve-group ((self bt-sequential-impulse-constraint-solver) bodies (numBodies cl:integer) manifold (numManifolds cl:integer) constraints (numConstraints cl:integer) info debugDrawer (dispatcher bt-dispatcher))
  (btSequentialImpulseConstraintSolver_solveGroup (ff-pointer self) bodies numBodies manifold numManifolds constraints numConstraints info debugDrawer dispatcher))

(cl:defmethod reset ((self bt-sequential-impulse-constraint-solver))
  (btSequentialImpulseConstraintSolver_reset (ff-pointer self)))

(cl:defmethod bt-rand2 ((self bt-sequential-impulse-constraint-solver))
  (btSequentialImpulseConstraintSolver_btRand2 (ff-pointer self)))

(cl:defmethod bt-rand-int2 ((self bt-sequential-impulse-constraint-solver) (n cl:integer))
  (btSequentialImpulseConstraintSolver_btRandInt2 (ff-pointer self) n))

(cl:defmethod set-rand-seed ((self bt-sequential-impulse-constraint-solver) (seed cl:integer))
  (btSequentialImpulseConstraintSolver_setRandSeed (ff-pointer self) seed))

(cl:defmethod get-rand-seed ((self bt-sequential-impulse-constraint-solver))
  (btSequentialImpulseConstraintSolver_getRandSeed (ff-pointer self)))

(cl:defmethod get-solver-type ((self bt-sequential-impulse-constraint-solver))
  (btSequentialImpulseConstraintSolver_getSolverType (ff-pointer self)))


(cl:defclass bt-soft-body(btCollisionObject)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_collisionDisabledObjects) (arg0 (obj bt-soft-body))
  (btSoftBody_m_collisionDisabledObjects_set (ff-pointer obj) arg0))

(cl:defmethod m_collisionDisabledObjects ((obj bt-soft-body))
  (btSoftBody_m_collisionDisabledObjects_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_softBodySolver) (arg0 (obj bt-soft-body))
  (btSoftBody_m_softBodySolver_set (ff-pointer obj) arg0))

(cl:defmethod m_softBodySolver ((obj bt-soft-body))
  (btSoftBody_m_softBodySolver_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_cfg) (arg0 (obj bt-soft-body))
  (btSoftBody_m_cfg_set (ff-pointer obj) arg0))

(cl:defmethod m_cfg ((obj bt-soft-body))
  (btSoftBody_m_cfg_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_sst) (arg0 (obj bt-soft-body))
  (btSoftBody_m_sst_set (ff-pointer obj) arg0))

(cl:defmethod m_sst ((obj bt-soft-body))
  (btSoftBody_m_sst_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_pose) (arg0 (obj bt-soft-body))
  (btSoftBody_m_pose_set (ff-pointer obj) arg0))

(cl:defmethod m_pose ((obj bt-soft-body))
  (btSoftBody_m_pose_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_tag) (arg0 (obj bt-soft-body))
  (btSoftBody_m_tag_set (ff-pointer obj) arg0))

(cl:defmethod m_tag ((obj bt-soft-body))
  (btSoftBody_m_tag_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_worldInfo) (arg0 (obj bt-soft-body))
  (btSoftBody_m_worldInfo_set (ff-pointer obj) arg0))

(cl:defmethod m_worldInfo ((obj bt-soft-body))
  (btSoftBody_m_worldInfo_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_notes) (arg0 (obj bt-soft-body))
  (btSoftBody_m_notes_set (ff-pointer obj) arg0))

(cl:defmethod m_notes ((obj bt-soft-body))
  (btSoftBody_m_notes_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_nodes) (arg0 (obj bt-soft-body))
  (btSoftBody_m_nodes_set (ff-pointer obj) arg0))

(cl:defmethod m_nodes ((obj bt-soft-body))
  (btSoftBody_m_nodes_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_links) (arg0 (obj bt-soft-body))
  (btSoftBody_m_links_set (ff-pointer obj) arg0))

(cl:defmethod m_links ((obj bt-soft-body))
  (btSoftBody_m_links_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_faces) (arg0 (obj bt-soft-body))
  (btSoftBody_m_faces_set (ff-pointer obj) arg0))

(cl:defmethod m_faces ((obj bt-soft-body))
  (btSoftBody_m_faces_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_tetras) (arg0 (obj bt-soft-body))
  (btSoftBody_m_tetras_set (ff-pointer obj) arg0))

(cl:defmethod m_tetras ((obj bt-soft-body))
  (btSoftBody_m_tetras_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_anchors) (arg0 (obj bt-soft-body))
  (btSoftBody_m_anchors_set (ff-pointer obj) arg0))

(cl:defmethod m_anchors ((obj bt-soft-body))
  (btSoftBody_m_anchors_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_rcontacts) (arg0 (obj bt-soft-body))
  (btSoftBody_m_rcontacts_set (ff-pointer obj) arg0))

(cl:defmethod m_rcontacts ((obj bt-soft-body))
  (btSoftBody_m_rcontacts_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_scontacts) (arg0 (obj bt-soft-body))
  (btSoftBody_m_scontacts_set (ff-pointer obj) arg0))

(cl:defmethod m_scontacts ((obj bt-soft-body))
  (btSoftBody_m_scontacts_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_joints) (arg0 (obj bt-soft-body))
  (btSoftBody_m_joints_set (ff-pointer obj) arg0))

(cl:defmethod m_joints ((obj bt-soft-body))
  (btSoftBody_m_joints_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_materials) (arg0 (obj bt-soft-body))
  (btSoftBody_m_materials_set (ff-pointer obj) arg0))

(cl:defmethod m_materials ((obj bt-soft-body))
  (btSoftBody_m_materials_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_timeacc) (arg0 (obj bt-soft-body))
  (btSoftBody_m_timeacc_set (ff-pointer obj) arg0))

(cl:defmethod m_timeacc ((obj bt-soft-body))
  (btSoftBody_m_timeacc_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_bounds) (arg0 (obj bt-soft-body))
  (btSoftBody_m_bounds_set (ff-pointer obj) arg0))

(cl:defmethod m_bounds ((obj bt-soft-body))
  (btSoftBody_m_bounds_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_bUpdateRtCst) (arg0 (obj bt-soft-body))
  (btSoftBody_m_bUpdateRtCst_set (ff-pointer obj) arg0))

(cl:defmethod m_bUpdateRtCst ((obj bt-soft-body))
  (btSoftBody_m_bUpdateRtCst_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_clusters) (arg0 (obj bt-soft-body))
  (btSoftBody_m_clusters_set (ff-pointer obj) arg0))

(cl:defmethod m_clusters ((obj bt-soft-body))
  (btSoftBody_m_clusters_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_clusterConnectivity) (arg0 (obj bt-soft-body))
  (btSoftBody_m_clusterConnectivity_set (ff-pointer obj) arg0))

(cl:defmethod m_clusterConnectivity ((obj bt-soft-body))
  (btSoftBody_m_clusterConnectivity_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_initialWorldTransform) (arg0 (obj bt-soft-body))
  (btSoftBody_m_initialWorldTransform_set (ff-pointer obj) arg0))

(cl:defmethod m_initialWorldTransform ((obj bt-soft-body))
  (btSoftBody_m_initialWorldTransform_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_windVelocity) (arg0 (obj bt-soft-body))
  (btSoftBody_m_windVelocity_set (ff-pointer obj) arg0))

(cl:defmethod m_windVelocity ((obj bt-soft-body))
  (btSoftBody_m_windVelocity_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_restLengthScale) (arg0 (obj bt-soft-body))
  (btSoftBody_m_restLengthScale_set (ff-pointer obj) arg0))

(cl:defmethod m_restLengthScale ((obj bt-soft-body))
  (btSoftBody_m_restLengthScale_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-soft-body) &key worldInfo (node_count cl:integer) (x bt-vector3) m)
  (setf (slot-value obj 'ff-pointer) (new_btSoftBody worldInfo node_count x m)))

(cl:defmethod initialize-instance :after ((obj bt-soft-body) &key worldInfo)
  (setf (slot-value obj 'ff-pointer) (new_btSoftBody worldInfo)))

(cl:defmethod init-defaults ((self bt-soft-body))
  (btSoftBody_initDefaults (ff-pointer self)))

(cl:defmethod (cl:setf m_userIndexMapping) (arg0 (obj bt-soft-body))
  (btSoftBody_m_userIndexMapping_set (ff-pointer obj) arg0))

(cl:defmethod m_userIndexMapping ((obj bt-soft-body))
  (btSoftBody_m_userIndexMapping_get (ff-pointer obj)))

(cl:defmethod get-world-info ((self bt-soft-body))
  (btSoftBody_getWorldInfo (ff-pointer self)))

(cl:defmethod set-collision-shape ((self bt-soft-body) (collisionShape bt-collision-shape))
  (btSoftBody_setCollisionShape (ff-pointer self) collisionShape))

(cl:defmethod check-link ((self bt-soft-body) (node0 cl:integer) (node1 cl:integer))
  (btSoftBody_checkLink (ff-pointer self) node0 node1))

(cl:defmethod check-link ((self bt-soft-body) node0 node1)
  (btSoftBody_checkLink (ff-pointer self) node0 node1))

(cl:defmethod check-face ((self bt-soft-body) (node0 cl:integer) (node1 cl:integer) (node2 cl:integer))
  (btSoftBody_checkFace (ff-pointer self) node0 node1 node2))

(cl:defmethod append-material ((self bt-soft-body))
  (btSoftBody_appendMaterial (ff-pointer self)))

(cl:defmethod append-note ((self bt-soft-body) (text cl:string) (o bt-vector3) (c bt-vector4) n0 n1 n2 n3)
  (btSoftBody_appendNote (ff-pointer self) text o c n0 n1 n2 n3))

(cl:defmethod append-note ((self bt-soft-body) (text cl:string) (o bt-vector3) (c bt-vector4) n0 n1 n2)
  (btSoftBody_appendNote (ff-pointer self) text o c n0 n1 n2))

(cl:defmethod append-note ((self bt-soft-body) (text cl:string) (o bt-vector3) (c bt-vector4) n0 n1)
  (btSoftBody_appendNote (ff-pointer self) text o c n0 n1))

(cl:defmethod append-note ((self bt-soft-body) (text cl:string) (o bt-vector3) (c bt-vector4) n0)
  (btSoftBody_appendNote (ff-pointer self) text o c n0))

(cl:defmethod append-note ((self bt-soft-body) (text cl:string) (o bt-vector3) (c bt-vector4))
  (btSoftBody_appendNote (ff-pointer self) text o c))

(cl:defmethod append-note ((self bt-soft-body) (text cl:string) (o bt-vector3))
  (btSoftBody_appendNote (ff-pointer self) text o))

(cl:defmethod append-note ((self bt-soft-body) (text cl:string) (o bt-vector3) feature)
  (btSoftBody_appendNote (ff-pointer self) text o feature))

(cl:defmethod append-note ((self bt-soft-body) (text cl:string) (o bt-vector3) feature)
  (btSoftBody_appendNote (ff-pointer self) text o feature))

(cl:defmethod append-note ((self bt-soft-body) (text cl:string) (o bt-vector3) feature)
  (btSoftBody_appendNote (ff-pointer self) text o feature))

(cl:defmethod append-node ((self bt-soft-body) (x bt-vector3) (m cl:number))
  (btSoftBody_appendNode (ff-pointer self) x m))

(cl:defmethod append-link ((self bt-soft-body) (model cl:integer) mat)
  (btSoftBody_appendLink (ff-pointer self) model mat))

(cl:defmethod append-link ((self bt-soft-body) (model cl:integer))
  (btSoftBody_appendLink (ff-pointer self) model))

(cl:defmethod append-link ((self bt-soft-body))
  (btSoftBody_appendLink (ff-pointer self)))

(cl:defmethod append-link ((self bt-soft-body) (node0 cl:integer) (node1 cl:integer) mat (bcheckexist t))
  (btSoftBody_appendLink (ff-pointer self) node0 node1 mat bcheckexist))

(cl:defmethod append-link ((self bt-soft-body) (node0 cl:integer) (node1 cl:integer) mat)
  (btSoftBody_appendLink (ff-pointer self) node0 node1 mat))

(cl:defmethod append-link ((self bt-soft-body) (node0 cl:integer) (node1 cl:integer))
  (btSoftBody_appendLink (ff-pointer self) node0 node1))

(cl:defmethod append-link ((self bt-soft-body) node0 node1 mat (bcheckexist t))
  (btSoftBody_appendLink (ff-pointer self) node0 node1 mat bcheckexist))

(cl:defmethod append-link ((self bt-soft-body) node0 node1 mat)
  (btSoftBody_appendLink (ff-pointer self) node0 node1 mat))

(cl:defmethod append-link ((self bt-soft-body) node0 node1)
  (btSoftBody_appendLink (ff-pointer self) node0 node1))

(cl:defmethod append-face ((self bt-soft-body) (model cl:integer) mat)
  (btSoftBody_appendFace (ff-pointer self) model mat))

(cl:defmethod append-face ((self bt-soft-body) (model cl:integer))
  (btSoftBody_appendFace (ff-pointer self) model))

(cl:defmethod append-face ((self bt-soft-body))
  (btSoftBody_appendFace (ff-pointer self)))

(cl:defmethod append-face ((self bt-soft-body) (node0 cl:integer) (node1 cl:integer) (node2 cl:integer) mat)
  (btSoftBody_appendFace (ff-pointer self) node0 node1 node2 mat))

(cl:defmethod append-face ((self bt-soft-body) (node0 cl:integer) (node1 cl:integer) (node2 cl:integer))
  (btSoftBody_appendFace (ff-pointer self) node0 node1 node2))

(cl:defmethod append-tetra ((self bt-soft-body) (model cl:integer) mat)
  (btSoftBody_appendTetra (ff-pointer self) model mat))

(cl:defmethod append-tetra ((self bt-soft-body) (node0 cl:integer) (node1 cl:integer) (node2 cl:integer) (node3 cl:integer) mat)
  (btSoftBody_appendTetra (ff-pointer self) node0 node1 node2 node3 mat))

(cl:defmethod append-tetra ((self bt-soft-body) (node0 cl:integer) (node1 cl:integer) (node2 cl:integer) (node3 cl:integer))
  (btSoftBody_appendTetra (ff-pointer self) node0 node1 node2 node3))

(cl:defmethod append-anchor ((self bt-soft-body) (node cl:integer) (body bt-rigid-body) (disableCollisionBetweenLinkedBodies t) (influence cl:number))
  (btSoftBody_appendAnchor (ff-pointer self) node body disableCollisionBetweenLinkedBodies influence))

(cl:defmethod append-anchor ((self bt-soft-body) (node cl:integer) (body bt-rigid-body) (disableCollisionBetweenLinkedBodies t))
  (btSoftBody_appendAnchor (ff-pointer self) node body disableCollisionBetweenLinkedBodies))

(cl:defmethod append-anchor ((self bt-soft-body) (node cl:integer) (body bt-rigid-body))
  (btSoftBody_appendAnchor (ff-pointer self) node body))

(cl:defmethod append-anchor ((self bt-soft-body) (node cl:integer) (body bt-rigid-body) (localPivot bt-vector3) (disableCollisionBetweenLinkedBodies t) (influence cl:number))
  (btSoftBody_appendAnchor (ff-pointer self) node body localPivot disableCollisionBetweenLinkedBodies influence))

(cl:defmethod append-anchor ((self bt-soft-body) (node cl:integer) (body bt-rigid-body) (localPivot bt-vector3) (disableCollisionBetweenLinkedBodies t))
  (btSoftBody_appendAnchor (ff-pointer self) node body localPivot disableCollisionBetweenLinkedBodies))

(cl:defmethod append-anchor ((self bt-soft-body) (node cl:integer) (body bt-rigid-body) (localPivot bt-vector3))
  (btSoftBody_appendAnchor (ff-pointer self) node body localPivot))

(cl:defmethod append-linear-joint ((self bt-soft-body) specs body0 body1)
  (btSoftBody_appendLinearJoint (ff-pointer self) specs body0 body1))

(cl:defmethod append-linear-joint ((self bt-soft-body) specs body)
  (btSoftBody_appendLinearJoint (ff-pointer self) specs body))

(cl:defmethod append-linear-joint ((self bt-soft-body) specs)
  (btSoftBody_appendLinearJoint (ff-pointer self) specs))

(cl:defmethod append-linear-joint ((self bt-soft-body) specs (body bt-soft-body))
  (btSoftBody_appendLinearJoint (ff-pointer self) specs (ff-pointer body)))

(cl:defmethod append-angular-joint ((self bt-soft-body) specs body0 body1)
  (btSoftBody_appendAngularJoint (ff-pointer self) specs body0 body1))

(cl:defmethod append-angular-joint ((self bt-soft-body) specs body)
  (btSoftBody_appendAngularJoint (ff-pointer self) specs body))

(cl:defmethod append-angular-joint ((self bt-soft-body) specs)
  (btSoftBody_appendAngularJoint (ff-pointer self) specs))

(cl:defmethod append-angular-joint ((self bt-soft-body) specs (body bt-soft-body))
  (btSoftBody_appendAngularJoint (ff-pointer self) specs (ff-pointer body)))

(cl:defmethod add-force ((self bt-soft-body) (force bt-vector3))
  (btSoftBody_addForce (ff-pointer self) force))

(cl:defmethod add-force ((self bt-soft-body) (force bt-vector3) (node cl:integer))
  (btSoftBody_addForce (ff-pointer self) force node))

(cl:defmethod add-aero-force-to-node ((self bt-soft-body) (windVelocity bt-vector3) (nodeIndex cl:integer))
  (btSoftBody_addAeroForceToNode (ff-pointer self) windVelocity nodeIndex))

(cl:defmethod add-aero-force-to-face ((self bt-soft-body) (windVelocity bt-vector3) (faceIndex cl:integer))
  (btSoftBody_addAeroForceToFace (ff-pointer self) windVelocity faceIndex))

(cl:defmethod add-velocity ((self bt-soft-body) (velocity bt-vector3))
  (btSoftBody_addVelocity (ff-pointer self) velocity))

(cl:defmethod set-velocity ((self bt-soft-body) (velocity bt-vector3))
  (btSoftBody_setVelocity (ff-pointer self) velocity))

(cl:defmethod add-velocity ((self bt-soft-body) (velocity bt-vector3) (node cl:integer))
  (btSoftBody_addVelocity (ff-pointer self) velocity node))

(cl:defmethod set-mass ((self bt-soft-body) (node cl:integer) (mass cl:number))
  (btSoftBody_setMass (ff-pointer self) node mass))

(cl:defmethod get-mass ((self bt-soft-body) (node cl:integer))
  (btSoftBody_getMass (ff-pointer self) node))

(cl:defmethod get-total-mass ((self bt-soft-body))
  (btSoftBody_getTotalMass (ff-pointer self)))

(cl:defmethod set-total-mass ((self bt-soft-body) (mass cl:number) (fromfaces t))
  (btSoftBody_setTotalMass (ff-pointer self) mass fromfaces))

(cl:defmethod set-total-mass ((self bt-soft-body) (mass cl:number))
  (btSoftBody_setTotalMass (ff-pointer self) mass))

(cl:defmethod set-total-density ((self bt-soft-body) (density cl:number))
  (btSoftBody_setTotalDensity (ff-pointer self) density))

(cl:defmethod set-volume-mass ((self bt-soft-body) (mass cl:number))
  (btSoftBody_setVolumeMass (ff-pointer self) mass))

(cl:defmethod set-volume-density ((self bt-soft-body) (density cl:number))
  (btSoftBody_setVolumeDensity (ff-pointer self) density))

(cl:defmethod transform ((self bt-soft-body) (trs bt-transform))
  (btSoftBody_transform (ff-pointer self) trs))

(cl:defmethod translate ((self bt-soft-body) (trs bt-vector3))
  (btSoftBody_translate (ff-pointer self) trs))

(cl:defmethod rotate ((self bt-soft-body) (rot bt-quaternion))
  (btSoftBody_rotate (ff-pointer self) rot))

(cl:defmethod scale ((self bt-soft-body) (scl bt-vector3))
  (btSoftBody_scale (ff-pointer self) scl))

(cl:defmethod get-rest-length-scale ((self bt-soft-body))
  (btSoftBody_getRestLengthScale (ff-pointer self)))

(cl:defmethod set-rest-length-scale ((self bt-soft-body) (restLength cl:number))
  (btSoftBody_setRestLengthScale (ff-pointer self) restLength))

(cl:defmethod set-pose ((self bt-soft-body) (bvolume t) (bframe t))
  (btSoftBody_setPose (ff-pointer self) bvolume bframe))

(cl:defmethod reset-link-rest-lengths ((self bt-soft-body))
  (btSoftBody_resetLinkRestLengths (ff-pointer self)))

(cl:defmethod get-volume ((self bt-soft-body))
  (btSoftBody_getVolume (ff-pointer self)))

(cl:defmethod cluster-count ((self bt-soft-body))
  (btSoftBody_clusterCount (ff-pointer self)))

(cl:defmethod cluster-com ((self bt-soft-body) (cluster cl:integer))
  (btSoftBody_clusterCom (ff-pointer self) cluster))

(cl:defmethod generate-bending-constraints ((self bt-soft-body) (distance cl:integer) mat)
  (btSoftBody_generateBendingConstraints (ff-pointer self) distance mat))

(cl:defmethod generate-bending-constraints ((self bt-soft-body) (distance cl:integer))
  (btSoftBody_generateBendingConstraints (ff-pointer self) distance))

(cl:defmethod randomize-constraints ((self bt-soft-body))
  (btSoftBody_randomizeConstraints (ff-pointer self)))

(cl:defmethod release-cluster ((self bt-soft-body) (index cl:integer))
  (btSoftBody_releaseCluster (ff-pointer self) index))

(cl:defmethod release-clusters ((self bt-soft-body))
  (btSoftBody_releaseClusters (ff-pointer self)))

(cl:defmethod generate-clusters ((self bt-soft-body) (k cl:integer) (maxiterations cl:integer))
  (btSoftBody_generateClusters (ff-pointer self) k maxiterations))

(cl:defmethod generate-clusters ((self bt-soft-body) (k cl:integer))
  (btSoftBody_generateClusters (ff-pointer self) k))

(cl:defmethod refine ((self bt-soft-body) ifn (accurary cl:number) (cut t))
  (btSoftBody_refine (ff-pointer self) ifn accurary cut))

(cl:defmethod cut-link ((self bt-soft-body) (node0 cl:integer) (node1 cl:integer) (position cl:number))
  (btSoftBody_cutLink (ff-pointer self) node0 node1 position))

(cl:defmethod cut-link ((self bt-soft-body) node0 node1 (position cl:number))
  (btSoftBody_cutLink (ff-pointer self) node0 node1 position))

(cl:defmethod ray-test ((self bt-soft-body) (rayFrom bt-vector3) (rayTo bt-vector3) results)
  (btSoftBody_rayTest (ff-pointer self) rayFrom rayTo results))

(cl:defmethod set-solver ((self bt-soft-body) preset)
  (btSoftBody_setSolver (ff-pointer self) preset))

(cl:defmethod predict-motion ((self bt-soft-body) (dt cl:number))
  (btSoftBody_predictMotion (ff-pointer self) dt))

(cl:defmethod solve-constraints ((self bt-soft-body))
  (btSoftBody_solveConstraints (ff-pointer self)))

(cl:defmethod static-solve ((self bt-soft-body) (iterations cl:integer))
  (btSoftBody_staticSolve (ff-pointer self) iterations))

(cl:defmethod integrate-motion ((self bt-soft-body))
  (btSoftBody_integrateMotion (ff-pointer self)))

(cl:defmethod default-collision-handler ((self bt-soft-body) pcoWrap)
  (btSoftBody_defaultCollisionHandler (ff-pointer self) pcoWrap))

(cl:defmethod default-collision-handler ((self bt-soft-body) (psb bt-soft-body))
  (btSoftBody_defaultCollisionHandler (ff-pointer self) (ff-pointer psb)))

(cl:defmethod set-wind-velocity ((self bt-soft-body) (velocity bt-vector3))
  (btSoftBody_setWindVelocity (ff-pointer self) velocity))

(cl:defmethod get-wind-velocity ((self bt-soft-body))
  (btSoftBody_getWindVelocity (ff-pointer self)))

(cl:defmethod set-soft-body-solver ((self bt-soft-body) softBodySolver)
  (btSoftBody_setSoftBodySolver (ff-pointer self) softBodySolver))

(cl:defmethod get-soft-body-solver ((self bt-soft-body))
  (btSoftBody_getSoftBodySolver (ff-pointer self)))

(cl:defmethod get-soft-body-solver ((self bt-soft-body))
  (btSoftBody_getSoftBodySolver (ff-pointer self)))

(cl:defmethod get-aabb ((self bt-soft-body) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btSoftBody_getAabb (ff-pointer self) aabbMin aabbMax))

(cl:defmethod pointers-to-indices ((self bt-soft-body))
  (btSoftBody_pointersToIndices (ff-pointer self)))

(cl:defmethod indices-to-pointers ((self bt-soft-body) map)
  (btSoftBody_indicesToPointers (ff-pointer self) map))

(cl:defmethod indices-to-pointers ((self bt-soft-body))
  (btSoftBody_indicesToPointers (ff-pointer self)))

(cl:defmethod ray-test ((self bt-soft-body) (rayFrom bt-vector3) (rayTo bt-vector3) mint feature index (bcountonly t))
  (btSoftBody_rayTest (ff-pointer self) rayFrom rayTo mint feature index bcountonly))

(cl:defmethod initialize-face-tree ((self bt-soft-body))
  (btSoftBody_initializeFaceTree (ff-pointer self)))

(cl:defmethod evaluate-com ((self bt-soft-body))
  (btSoftBody_evaluateCom (ff-pointer self)))

(cl:defmethod check-contact ((self bt-soft-body) colObjWrap (x bt-vector3) (margin cl:number) cti)
  (btSoftBody_checkContact (ff-pointer self) colObjWrap x margin cti))

(cl:defmethod update-normals ((self bt-soft-body))
  (btSoftBody_updateNormals (ff-pointer self)))

(cl:defmethod update-bounds ((self bt-soft-body))
  (btSoftBody_updateBounds (ff-pointer self)))

(cl:defmethod update-pose ((self bt-soft-body))
  (btSoftBody_updatePose (ff-pointer self)))

(cl:defmethod update-constants ((self bt-soft-body))
  (btSoftBody_updateConstants (ff-pointer self)))

(cl:defmethod update-link-constants ((self bt-soft-body))
  (btSoftBody_updateLinkConstants (ff-pointer self)))

(cl:defmethod update-area ((self bt-soft-body) (averageArea t))
  (btSoftBody_updateArea (ff-pointer self) averageArea))

(cl:defmethod update-area ((self bt-soft-body))
  (btSoftBody_updateArea (ff-pointer self)))

(cl:defmethod initialize-clusters ((self bt-soft-body))
  (btSoftBody_initializeClusters (ff-pointer self)))

(cl:defmethod update-clusters ((self bt-soft-body))
  (btSoftBody_updateClusters (ff-pointer self)))

(cl:defmethod cleanup-clusters ((self bt-soft-body))
  (btSoftBody_cleanupClusters (ff-pointer self)))

(cl:defmethod prepare-clusters ((self bt-soft-body) (iterations cl:integer))
  (btSoftBody_prepareClusters (ff-pointer self) iterations))

(cl:defmethod solve-clusters ((self bt-soft-body) (sor cl:number))
  (btSoftBody_solveClusters (ff-pointer self) sor))

(cl:defmethod apply-clusters ((self bt-soft-body) (drift t))
  (btSoftBody_applyClusters (ff-pointer self) drift))

(cl:defmethod damp-clusters ((self bt-soft-body))
  (btSoftBody_dampClusters (ff-pointer self)))

(cl:defmethod apply-forces ((self bt-soft-body))
  (btSoftBody_applyForces (ff-pointer self)))

(cl:defmethod calculate-serialize-buffer-size ((self bt-soft-body))
  (btSoftBody_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-soft-body) dataBuffer serializer)
  (btSoftBody_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-soft-rigid-dynamics-world(btDiscreteDynamicsWorld)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-soft-rigid-dynamics-world) &key (dispatcher bt-dispatcher) (pairCache bt-broadphase-interface) (constraintSolver bt-constraint-solver) (collisionConfiguration bt-collision-configuration) softBodySolver)
  (setf (slot-value obj 'ff-pointer) (new_btSoftRigidDynamicsWorld dispatcher pairCache constraintSolver collisionConfiguration softBodySolver)))

(cl:defmethod initialize-instance :after ((obj bt-soft-rigid-dynamics-world) &key (dispatcher bt-dispatcher) (pairCache bt-broadphase-interface) (constraintSolver bt-constraint-solver) (collisionConfiguration bt-collision-configuration))
  (setf (slot-value obj 'ff-pointer) (new_btSoftRigidDynamicsWorld dispatcher pairCache constraintSolver collisionConfiguration)))

(cl:defmethod debug-draw-world ((self bt-soft-rigid-dynamics-world))
  (btSoftRigidDynamicsWorld_debugDrawWorld (ff-pointer self)))

(cl:defmethod add-soft-body ((self bt-soft-rigid-dynamics-world) (body bt-soft-body) (collisionFilterGroup cl:integer) (collisionFilterMask cl:integer))
  (btSoftRigidDynamicsWorld_addSoftBody (ff-pointer self) body collisionFilterGroup collisionFilterMask))

(cl:defmethod add-soft-body ((self bt-soft-rigid-dynamics-world) (body bt-soft-body) (collisionFilterGroup cl:integer))
  (btSoftRigidDynamicsWorld_addSoftBody (ff-pointer self) body collisionFilterGroup))

(cl:defmethod add-soft-body ((self bt-soft-rigid-dynamics-world) (body bt-soft-body))
  (btSoftRigidDynamicsWorld_addSoftBody (ff-pointer self) body))

(cl:defmethod remove-soft-body ((self bt-soft-rigid-dynamics-world) (body bt-soft-body))
  (btSoftRigidDynamicsWorld_removeSoftBody (ff-pointer self) body))

(cl:defmethod remove-collision-object ((self bt-soft-rigid-dynamics-world) (collisionObject bt-collision-object))
  (btSoftRigidDynamicsWorld_removeCollisionObject (ff-pointer self) collisionObject))

(cl:defmethod get-draw-flags ((self bt-soft-rigid-dynamics-world))
  (btSoftRigidDynamicsWorld_getDrawFlags (ff-pointer self)))

(cl:defmethod set-draw-flags ((self bt-soft-rigid-dynamics-world) (f cl:integer))
  (btSoftRigidDynamicsWorld_setDrawFlags (ff-pointer self) f))

(cl:defmethod get-world-info ((self bt-soft-rigid-dynamics-world))
  (btSoftRigidDynamicsWorld_getWorldInfo (ff-pointer self)))

(cl:defmethod get-world-info ((self bt-soft-rigid-dynamics-world))
  (btSoftRigidDynamicsWorld_getWorldInfo (ff-pointer self)))

(cl:defmethod get-world-type ((self bt-soft-rigid-dynamics-world))
  (btSoftRigidDynamicsWorld_getWorldType (ff-pointer self)))

(cl:defmethod get-soft-body-array ((self bt-soft-rigid-dynamics-world))
  (btSoftRigidDynamicsWorld_getSoftBodyArray (ff-pointer self)))

(cl:defmethod get-soft-body-array ((self bt-soft-rigid-dynamics-world))
  (btSoftRigidDynamicsWorld_getSoftBodyArray (ff-pointer self)))

(cl:defmethod ray-test ((self bt-soft-rigid-dynamics-world) (rayFromWorld bt-vector3) (rayToWorld bt-vector3) resultCallback)
  (btSoftRigidDynamicsWorld_rayTest (ff-pointer self) rayFromWorld rayToWorld resultCallback))

(cl:defmethod serialize ((self bt-soft-rigid-dynamics-world) serializer)
  (btSoftRigidDynamicsWorld_serialize (ff-pointer self) serializer))


(cl:defclass bt-soft-body-solver()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-solver-type ((self bt-soft-body-solver))
  (btSoftBodySolver_getSolverType (ff-pointer self)))

(cl:defmethod check-initialized ((self bt-soft-body-solver))
  (btSoftBodySolver_checkInitialized (ff-pointer self)))

(cl:defmethod optimize ((self bt-soft-body-solver) softBodies (forceUpdate t))
  (btSoftBodySolver_optimize (ff-pointer self) softBodies forceUpdate))

(cl:defmethod optimize ((self bt-soft-body-solver) softBodies)
  (btSoftBodySolver_optimize (ff-pointer self) softBodies))

(cl:defmethod copy-back-to-soft-bodies ((self bt-soft-body-solver) (bMove t))
  (btSoftBodySolver_copyBackToSoftBodies (ff-pointer self) bMove))

(cl:defmethod copy-back-to-soft-bodies ((self bt-soft-body-solver))
  (btSoftBodySolver_copyBackToSoftBodies (ff-pointer self)))

(cl:defmethod predict-motion ((self bt-soft-body-solver) (solverdt cl:number))
  (btSoftBodySolver_predictMotion (ff-pointer self) solverdt))

(cl:defmethod solve-constraints ((self bt-soft-body-solver) (solverdt cl:number))
  (btSoftBodySolver_solveConstraints (ff-pointer self) solverdt))

(cl:defmethod update-soft-bodies ((self bt-soft-body-solver))
  (btSoftBodySolver_updateSoftBodies (ff-pointer self)))

(cl:defmethod process-collision ((self bt-soft-body-solver) (arg1 bt-soft-body) arg2)
  (btSoftBodySolver_processCollision (ff-pointer self) arg1 arg2))

(cl:defmethod process-collision ((self bt-soft-body-solver) (arg1 bt-soft-body) (arg2 bt-soft-body))
  (btSoftBodySolver_processCollision (ff-pointer self) arg1 arg2))

(cl:defmethod set-number-of-position-iterations ((self bt-soft-body-solver) (iterations cl:integer))
  (btSoftBodySolver_setNumberOfPositionIterations (ff-pointer self) iterations))

(cl:defmethod get-number-of-position-iterations ((self bt-soft-body-solver))
  (btSoftBodySolver_getNumberOfPositionIterations (ff-pointer self)))

(cl:defmethod set-number-of-velocity-iterations ((self bt-soft-body-solver) (iterations cl:integer))
  (btSoftBodySolver_setNumberOfVelocityIterations (ff-pointer self) iterations))

(cl:defmethod get-number-of-velocity-iterations ((self bt-soft-body-solver))
  (btSoftBodySolver_getNumberOfVelocityIterations (ff-pointer self)))

(cl:defmethod get-time-scale ((self bt-soft-body-solver))
  (btSoftBodySolver_getTimeScale (ff-pointer self)))


(cl:defclass bt-soft-body-solver-output()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod copy-soft-body-to-vertex-buffer ((self bt-soft-body-solver-output) (softBody bt-soft-body) vertexBuffer)
  (btSoftBodySolverOutput_copySoftBodyToVertexBuffer (ff-pointer self) softBody vertexBuffer))


(cl:defclass bt-default-soft-body-solver(btSoftBodySolver)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-default-soft-body-solver) &key)
  (setf (slot-value obj 'ff-pointer) (new_btDefaultSoftBodySolver)))

(cl:defmethod get-solver-type ((self bt-default-soft-body-solver))
  (btDefaultSoftBodySolver_getSolverType (ff-pointer self)))

(cl:defmethod check-initialized ((self bt-default-soft-body-solver))
  (btDefaultSoftBodySolver_checkInitialized (ff-pointer self)))

(cl:defmethod update-soft-bodies ((self bt-default-soft-body-solver))
  (btDefaultSoftBodySolver_updateSoftBodies (ff-pointer self)))

(cl:defmethod optimize ((self bt-default-soft-body-solver) softBodies (forceUpdate t))
  (btDefaultSoftBodySolver_optimize (ff-pointer self) softBodies forceUpdate))

(cl:defmethod optimize ((self bt-default-soft-body-solver) softBodies)
  (btDefaultSoftBodySolver_optimize (ff-pointer self) softBodies))

(cl:defmethod copy-back-to-soft-bodies ((self bt-default-soft-body-solver) (bMove t))
  (btDefaultSoftBodySolver_copyBackToSoftBodies (ff-pointer self) bMove))

(cl:defmethod copy-back-to-soft-bodies ((self bt-default-soft-body-solver))
  (btDefaultSoftBodySolver_copyBackToSoftBodies (ff-pointer self)))

(cl:defmethod solve-constraints ((self bt-default-soft-body-solver) (solverdt cl:number))
  (btDefaultSoftBodySolver_solveConstraints (ff-pointer self) solverdt))

(cl:defmethod predict-motion ((self bt-default-soft-body-solver) (solverdt cl:number))
  (btDefaultSoftBodySolver_predictMotion (ff-pointer self) solverdt))

(cl:defmethod copy-soft-body-to-vertex-buffer ((self bt-default-soft-body-solver) (softBody bt-soft-body) vertexBuffer)
  (btDefaultSoftBodySolver_copySoftBodyToVertexBuffer (ff-pointer self) softBody vertexBuffer))

(cl:defmethod process-collision ((self bt-default-soft-body-solver) (arg1 bt-soft-body) arg2)
  (btDefaultSoftBodySolver_processCollision (ff-pointer self) arg1 arg2))

(cl:defmethod process-collision ((self bt-default-soft-body-solver) (arg1 bt-soft-body) (arg2 bt-soft-body))
  (btDefaultSoftBodySolver_processCollision (ff-pointer self) arg1 arg2))


(cl:defclass bt-soft-body-rigid-body-collision-configuration(btDefaultCollisionConfiguration)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-soft-body-rigid-body-collision-configuration) &key constructionInfo)
  (setf (slot-value obj 'ff-pointer) (new_btSoftBodyRigidBodyCollisionConfiguration constructionInfo)))

(cl:defmethod initialize-instance :after ((obj bt-soft-body-rigid-body-collision-configuration) &key)
  (setf (slot-value obj 'ff-pointer) (new_btSoftBodyRigidBodyCollisionConfiguration)))

(cl:defmethod get-collision-algorithm-create-func ((self bt-soft-body-rigid-body-collision-configuration) (proxyType0 cl:integer) (proxyType1 cl:integer))
  (btSoftBodyRigidBodyCollisionConfiguration_getCollisionAlgorithmCreateFunc (ff-pointer self) proxyType0 proxyType1))


