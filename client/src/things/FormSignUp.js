import React from 'react';
import useForm from './useForm';
import validate from './validateInfo';
import './RegisterForm.css'

const FormSignUp = ({ submitForm }) => {
    const { handleChange, handleSubmit, values, errors } = useForm(
      submitForm,
      validate
    );
  

    return (
        <div className="form-content-right">
            <form action="" className="form" onSubmit={handleSubmit}>
                <br/>
                <h1>Get started with us today! Create your account filling out the information below </h1>
                <div className="form-inputs">
                <label htmlFor="email" className="form-label">Email</label>
                <input  id='email'   type ="email"  name="email" className="form-input" placeholder='Enter your email' value={values.email} onChange={handleChange}></input>
                    {errors.email && <p>{errors.email}</p>}
                </div>
                <div className='form-inputs'>
                    <label className='form-label'>Password</label>
                    <input className='form-input' type='password' name='password' placeholder='Enter your password' value={values.password} onChange={handleChange}></input>
                    {errors.password && <p>{errors.password}</p>}              
                    </div>
                <button className="form-input-btn" type='submit'> Login</button>
                     <span className='form-input-login'> <a href='#'>Forgot password?</a> </span>
            </form>
        </div>  

    )
}

export default FormSignUp;
